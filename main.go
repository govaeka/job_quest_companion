package main

import (
	"database/sql"
	"log"
	"net/http"
	"os"

	"github.com/govaeka/job_quest_companion/internal/database"
	"github.com/joho/godotenv"
	_ "github.com/lib/pq"
)

type apiConfig struct {
	database *database.Queries
}

func main() {

	err := godotenv.Load()
	if err != nil {
		log.Fatalf("Error loading .env file: %v", err)
	}

	dbURL := os.Getenv("DB_URL")

	db, err := sql.Open("postgres", dbURL)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	queries := database.New(db)

	_ = &apiConfig{ // cfg
		database: queries,
	}

	// Routes
	mux := http.NewServeMux()
	/*
		mux.HandleFunc("/", cfg.indexHandler)
		mux.HandleFunc("/ads", cfg.adsHandler)
		mux.HandleFunc("/companies", cfg.companiesHandler)
		mux.HandleFunc("/cvs", cfg.cvsHandler)
		mux.HandleFunc("/events", cfg.eventsHandler)
	*/

	// Static files
	mux.Handle("/static/",
		http.StripPrefix("/static/",
			http.FileServer(http.Dir("./static")),
		),
	)

	// Server
	server := &http.Server{
		Addr:    ":8080",
		Handler: mux,
	}

	log.Println("Job Quest Companion running on http://localhost:8080")

	if err := server.ListenAndServe(); err != nil {
		log.Fatal(err)
	}
}
