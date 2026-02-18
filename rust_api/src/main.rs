use actix_web::{get, App, HttpServer, Responder, HttpResponse};
use serde::Serialize;

#[derive(Serialize)]
struct Health {
    status: String,
    service: String,
}

#[get("/health")]
async fn health() -> impl Responder {
    HttpResponse::Ok().json(Health {
        status: "ok".to_string(),
        service: "nrelab-api-rust".to_string(),
    })
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    println!("🚀 nrelab-api-rust running on 8081");
    HttpServer::new(|| App::new().service(health))
        .bind(("0.0.0.0", 8081))?
        .run()
        .await
}
