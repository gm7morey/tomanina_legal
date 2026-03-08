import SwiftUI

struct PrivacyPolicyView: View {
    @EnvironmentObject var themeManager: ThemeManager
    
    private let sections: [(title: String, body: String)] = [
        (
            title: "مقدمة",
            body: "نرحب بك في تطبيق طمأنينة. نحن ملتزمون بحماية خصوصيتك وبياناتك الشخصية. توضح سياسة الخصوصية هذه كيفية تعاملنا مع معلوماتك عند استخدامك لتطبيقنا."
        ),
        (
            title: "البيانات التي نجمعها",
            body: "تطبيق طمأنينة لا يجمع أي بيانات شخصية تُعرِّفك بشكل مباشر. قد نستخدم بيانات الموقع الجغرافي فقط لحساب أوقات الصلاة والقبلة، ولا يتم تخزين هذه البيانات أو إرسالها إلى أي جهة خارجية. جميع بياناتك مخزنة محليًا على جهازك فقط."
        ),
        (
            title: "استخدام الموقع الجغرافي",
            body: "يستخدم التطبيق صلاحية الوصول إلى موقعك الجغرافي لحساب أوقات الصلاة الدقيقة واتجاه القبلة. لا يتم مشاركة موقعك مع أي طرف ثالث، وتظل هذه البيانات على جهازك فحسب."
        ),
        (
            title: "الإشعارات",
            body: "قد يطلب التطبيق إذنًا لإرسال إشعارات لتنبيهك بمواقيت الصلاة والأذكار. يمكنك إلغاء هذا الإذن في أي وقت من إعدادات جهازك."
        ),
        (
            title: "البيانات المخزنة محليًا",
            body: "يخزّن التطبيق إعداداتك وبيانات تقدمك (كإنجازاتك وسجلات الصلاة) محليًا على جهازك فقط، ولا يتم رفع أي منها إلى خوادم خارجية."
        ),
        (
            title: "الخدمات الخارجية",
            body: "لا يعتمد تطبيق طمأنينة على أي خدمات تحليلات خارجية أو منصات إعلانية تجمع بياناتك."
        ),
        (
            title: "خصوصية الأطفال",
            body: "تطبيقنا مناسب لجميع الفئات العمرية ولا يجمع عمدًا أي بيانات تخص الأطفال دون سن الثالثة عشرة."
        ),
        (
            title: "التحديثات على سياسة الخصوصية",
            body: "قد نقوم بتحديث هذه السياسة من وقت لآخر. سيتم إخطارك بأي تغييرات جوهرية عبر التطبيق. يُعدّ استمرارك في استخدام التطبيق بعد التحديث موافقةً على السياسة الجديدة."
        ),
        (
            title: "التواصل معنا",
            body: "إذا كان لديك أي استفسار حول سياسة الخصوصية، يمكنك التواصل معنا على:\ngm7morey@gmail.com"
        )
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .trailing, spacing: 24) {
                // Header
                VStack(alignment: .trailing, spacing: 8) {
                    Text("سياسة الخصوصية")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(themeManager.primaryTextColor)
                    Text("آخر تحديث: الأحد ٨ مارس ٢٠٢٦م")
                        .font(.subheadline)
                        .foregroundColor(themeManager.secondaryTextColor)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.top, 8)
                
                Divider()
                
                // Sections
                ForEach(sections, id: \.title) { section in
                    VStack(alignment: .trailing, spacing: 10) {
                        Text(section.title)
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(themeManager.primaryAccent)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        Text(section.body)
                            .font(.system(size: 15))
                            .foregroundColor(themeManager.primaryTextColor)
                            .multilineTextAlignment(.trailing)
                            .lineSpacing(6)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(16)
                    .background(themeManager.cardBackground)
                    .cornerRadius(14)
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 32)
            .environment(\.layoutDirection, .rightToLeft)
        }
        .background(themeManager.backgroundColor.ignoresSafeArea())
        .navigationTitle("سياسة الخصوصية")
        .navigationBarTitleDisplayMode(.inline)
    }
}
