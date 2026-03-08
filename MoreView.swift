import SwiftUI

struct MoreView: View {
    @EnvironmentObject var themeManager: ThemeManager
    @EnvironmentObject var prayerService: PrayerTimeService
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("الأدوات الذكية")) {
                    NavigationLink(destination: QiblaCompassView()) {
                        Label("qibla_title", systemImage: "safari.fill")
                    }
                    NavigationLink(destination: SmartWidgetsPreview()) {
                        Label("widgets_title", systemImage: "square.grid.2x2.fill")
                    }
                    NavigationLink(destination: SpiritualCompanionView()) {
                        Label("companion_title", systemImage: "sparkles")
                    }
                }
                
                Section(header: Text("settings_title", tableName: "Localizable")) {
                    NavigationLink(destination:
                        SettingsView()
                            .environmentObject(themeManager)
                            .environmentObject(prayerService)
                    ) {
                        Label("settings_title", systemImage: "gearshape.fill")
                    }
                }
                
                Section(header: Text("قانوني")) {
                    NavigationLink(destination:
                        PrivacyPolicyView()
                            .environmentObject(themeManager)
                    ) {
                        Label("سياسة الخصوصية", systemImage: "lock.shield.fill")
                    }
                    NavigationLink(destination:
                        TermsOfUseView()
                            .environmentObject(themeManager)
                    ) {
                        Label("شروط الاستخدام", systemImage: "doc.text.fill")
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .scrollContentBackground(.hidden)
            .background(themeManager.backgroundColor.ignoresSafeArea())
            .navigationTitle("المزيد")
        }
        .accentColor(themeManager.primaryAccent)
        .environment(\.locale, AppSettings.shared.locale)
        .environment(\.layoutDirection, AppSettings.shared.layoutDirection)
    }
}
