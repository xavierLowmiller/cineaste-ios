//
//  Strings.swift
//  Cineaste
//
//  Created by Felizia Bernutz on 11.03.18.
//  Copyright © 2018 notimeforthat.org. All rights reserved.
//

import Foundation

extension String {
    // MARK: DEFAULT
    static let okAction = NSLocalizedString("OK", comment: "Title for ok action")
    static let saveAction = NSLocalizedString("Speichern", comment: "Title for save action")
    static let infoTitle = NSLocalizedString("Info", comment: "Title for information")
    static let cancelAction = NSLocalizedString("Abbrechen", comment: "Title for cancel action")
    static let yesAction = NSLocalizedString("Ja", comment: "Title for yes action")
    static let noAction = NSLocalizedString("Nein", comment: "Title for no action")
    static let errorTitle = NSLocalizedString("Fehler", comment: "Title for error alert")

    // MARK: ACTION BUTTONS
    static let wantToSeeButton = NSLocalizedString("Muss ich sehen", comment: "Title for must see movie button")
    static let seenButton = NSLocalizedString("Schon gesehen", comment: "Title for seen movie button")
    static let deleteButton = NSLocalizedString("Von Liste löschen", comment: "Title for delete movie button")
    static let startMovieNight = NSLocalizedString("Filmnacht starten", comment: "Title for the start movienight button")

    // MARK: VIEWCONTROLLER TITLE
    static let wantToSeeList = NSLocalizedString("Musst du sehen", comment: "Title for want to see movie list")
    static let seenList = NSLocalizedString("Schon gesehen", comment: "Title for seen movie list")
    static let movieNightTitle = NSLocalizedString("Filmnacht", comment: "Title for movie night viewController")
    static let settingsTitle = NSLocalizedString("Einstellungen", comment: "Title for settings viewController")

    // MARK: MOVIES VIEWCONTROLLER
    static func title(for category: MovieListCategory) -> String {
        return NSLocalizedString(
            """
            Du hast keine Filme auf deiner \"\(category.title)\"-Liste.
            Füge doch einen neuen Titel hinzu.
            """,
            comment: "Description for empty movie list")
    }

    static let onDate = NSLocalizedString("am", comment: "on a date")

    // MARK: TAB TITLE
    static let wantToSeeTab = NSLocalizedString("Musst du sehen", comment: "TabBar title for want to see movie list")
    static let seenTab = NSLocalizedString("Schon gesehen", comment: "TabBar title for seen movie list")
    static let settingTab = NSLocalizedString("Einstellungen", comment: "TabBar title for setting")

    // MARK: SETTINGS VIEWCONTROLLER ELEMENTS
    static let exportTitle = NSLocalizedString("Export", comment: "Title for settings cell exportMovies")
    static let importTitle = NSLocalizedString("Import", comment: "Title for settings cell importMovies")
    static let licenceTitle = NSLocalizedString("Lizenzen", comment: "Title for settings cell licence")
    static let aboutAppTitle = NSLocalizedString("Über die App", comment: "Title for settings cell about")

    // MARK: VERSION INFO
    static let versionText = NSLocalizedString("Version", comment: "Description for app version")

    // MARK: SWIPE ACTIONS
    static let deleteActionTitle = NSLocalizedString("Löschen", comment: "Title for delete swipe action")

    // MARK: CONTENT
    static let imprintContent = NSLocalizedString(
    """
    Cineaste ist ein Open Source Projekt und startete bereits 2016 mit einer \
    Android App.

    iOS App - GitHub: github.com/ChristianNorbertBraun/Cineaste
    Android App - GitHub: github.com/marcelgross90/Cineaste

    Das Kernfeature der App liegt darin, möglichst leicht Filme für einen \
    gemeinsamen Filmeabend zu finden. Über den "Matching"-Button sucht dein \
    Handy nach Freunden in deiner Umgebung und findet Filme, die ihr alle \
    sehen wollt.

    Die Daten werden dabei über Bluetooth übertragen. Das heißt, dass deine \
    Filmlisten zu jedem Zeitpunkt sicher auf deinem Gerät sind und dort auch \
    bleiben. Daten werden also nur innerhalb deines Wohnzimmers ausgetauscht.

    Cineaste befindet sich noch im Anfangsstadium und könnte manchmal nicht \
    richtig funktionieren. Natürlich geben wir unser Bestes um das Erlebnis so \
    gut wie möglich zu machen, dabei sind wir aber auf dein Feedback \
    angewiesen. Schreib doch einfach ein Kommentar im App Store oder entwickle \
    gemeinsam mit uns Cineaste weiter! Für die Filme zapfen wir übrigens \
    TheMovieDb (www.themoviedb.org) an.

    Besonderer Dank geht an Philipp Wolf für das Design!
    """,
    comment: "Imprint content")

    static let movieDBTitle = NSLocalizedString("The Movie DB", comment: "Title for movieDB")
    static let movieDBDescription = NSLocalizedString("This product uses the TMDb API but is not endorsed or certified by TMDb.", comment: "Description for movieDB")

    // MARK: SHORTCUT
    static func movies(for counter: Int) -> String {
        return String.localizedStringWithFormat(NSLocalizedString("%d movie(s)", comment: "Movie(s)"), counter)
    }

    // MARK: MOVIENIGHT
    static func matches(for number: Int, amountOfPeople: Int) -> String {
        return NSLocalizedString("\(number) von \(amountOfPeople)", comment: "Number of matches description")
    }

    // MARK: EXPORT
    static let exportMoviesFileName = "movies.json"
    static let exportMoviesFileUTI = "public.json"

    // MARK: Empty state
    static let unknownVoteCount = "-.-"
    static let unknownVoteAverage = "-.-"
    static let unknownRuntime = "-.-"
    static let unknownReleaseDate = NSLocalizedString("Unbekannt", comment: "Title for unknown release date")

    // MARK: Alert messages

    // connection error
    static let connectionErrorMessage = NSLocalizedString("Verbindung zur Filmdatenbank fehlgeschlagen.", comment: "Message for connection error alert")
    static let loadingDataErrorMessage = NSLocalizedString("Die Daten konnten nicht geladen werden.", comment: "Message for loading data error alert")

    // core data error
    static let deleteMovieErrorMessage = NSLocalizedString("Der Film konnte nicht gelöscht werden.", comment: "Message for delete movie error alert")
    static let updateMovieErrorMessage = NSLocalizedString("Der Film konnte nicht verschoben werden.", comment: "Message for update movie error alert")
    static let insertMovieErrorMessage = NSLocalizedString("Der Film konnte nicht eingefügt werden.", comment: "Message for insert movie error alert")

    // enter username for movie night
    static let usernameTitle = NSLocalizedString("Benutzername", comment: "Enter username title")
    static let usernameDescription = NSLocalizedString("Gib einen Namen an, unter dem dich deine Freunde sehen können.", comment: "Enter username description")

    // missing feature
    static let missingFeatureMessage = NSLocalizedString("Dieses Feature wurde noch nicht implementiert.", comment: "Message for missing feature alert")

    // import
    static let askForImportTitle = NSLocalizedString("Bist du sicher?", comment: "Title for asking for import alert")
    static let askForImportMessage = NSLocalizedString(
        """
        Möchtest du deine bisherigen Daten wirklich mit Neuen überschreiben?
        Die alten Daten werden unwiderruflich gelöscht.
        """,
        comment: "Message for asking for import alert")
    static let importSucceededMessage = NSLocalizedString("Import erfolgreich", comment: "Message for import succeeded alert")

    static func importSucceededMessage(with counter: Int) -> String {
        let movies = String.localizedStringWithFormat(NSLocalizedString("%d movie(s)", comment: "Movie(s)"), counter)
        let importString = NSLocalizedString("erfolgreich importiert.", comment: "Message for movie import succeeded alert")
        return movies + " " + importString
    }

    static let importFailedMessage = NSLocalizedString("Import fehlgeschlagen", comment: "Message for import failed alert")
    static let importFailedCouldNotReadFileMessage = NSLocalizedString("Import fehlgeschlagen\nDie Datei konnte nicht gelesen werden.", comment: "Message for import failed because the file could not be read alert")

    // export
    static let exportFailedMessage = NSLocalizedString("Export fehlgeschlagen", comment: "Message for export failed alert")
    static let exportWithEmptyDataMessage = NSLocalizedString("Deine Datenbank ist leer. Füge Filme zu deiner Watchlist hinzu, dann kannst du diese auch exportieren.", comment: "Message for export with empty data alert")
}
