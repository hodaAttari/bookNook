plugins {
    application
    id("com.github.johnrengelman.shadow") version "8.1.1"
}

repositories {
    mavenCentral()
}

dependencies {
    implementation("io.undertow:undertow-core:2.3.10.Final")
    implementation("org.slf4j:slf4j-api:2.0.16")
    runtimeOnly("org.slf4j:slf4j-simple:2.0.16")
}

application {
    mainClass.set("com.booknook.backend.WebSocketServer")
}

tasks.shadowJar {
    archiveBaseName.set("backend-java")
    archiveClassifier.set("all")
}


