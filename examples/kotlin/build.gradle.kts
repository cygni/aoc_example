import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("jvm") version "1.7.21"
    application
}

group = "se.cygni.aoc"
version = "1.0.0"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation ("io.kotest:kotest-runner-junit5:5.5.4")
}

tasks.withType<Test>().configureEach {
    useJUnitPlatform()
}

tasks.withType<KotlinCompile>() {
    kotlinOptions.jvmTarget = "17"
}

tasks.withType<Jar> {
    duplicatesStrategy = DuplicatesStrategy.WARN

    manifest {
        attributes["Main-Class"] = "AocTemplateKt"
    }
    configurations["compileClasspath"].forEach { file: File ->
        from(zipTree(file.absoluteFile))
    }
}

application {
    mainClass.set("AocTemplateKt")
}
