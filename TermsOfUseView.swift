import SwiftUI

struct TermsOfUseView: View {
    @EnvironmentObject var themeManager: ThemeManager
    
    private let sections: [(title: String, body: String)] = [
        (
            title: "القبول بالشروط",
            body: "باستخدامك لتطبيق طمأنينة، فإنك توافق على الالتزام بهذه الشروط والأحكام. إذا كنت لا توافق على أي من هذه الشروط، يرجى عدم استخدام التطبيق."
        ),
        (
            title: "وصف الخدمة",
            body: "طمأنينة هو تطبيق إسلامي يوفر أوقات الصلاة، اتجاه القبلة، الأذكار، القرآن الكريم، وتتبع التقدم الروحي. التطبيق مجاني الاستخدام وموجه للمساعدة في تنظيم عبادتك اليومية."
        ),
        (
            title: "الاستخدام المسموح به",
            body: "يمنح التطبيق ترخيصًا شخصيًا وغير تجاري لاستخدامه على أجهزة Apple المملوكة لك. لا يجوز لك:\n• إعادة بيع التطبيق أو استخدامه لأغراض تجارية.\n• تعديل أو نسخ أو توزيع أي جزء من التطبيق.\n• محاولة الوصول غير المصرح به إلى أنظمة التطبيق."
        ),
        (
            title: "دقة المعلومات",
            body: "نسعى جاهدين لتقديم معلومات دقيقة لأوقات الصلاة والأذكار والمحتوى الديني. غير أن أوقات الصلاة تعتمد على حسابات فلكية وقد تختلف قليلًا عن التوقيت المحلي الرسمي. يُنصح بمراجعة التقويم الرسمي لبلدك."
        ),
        (
            title: "الملكية الفكرية",
            body: "جميع المحتويات والتصميمات والشعارات المستخدمة في تطبيق طمأنينة هي ملك حصري للمطور وهي محمية بقوانين الملكية الفكرية. أما القرآن الكريم والأذكار المأثورة فهي من التراث الإسلامي العام."
        ),
        (
            title: "إخلاء المسؤولية",
            body: "يُقدَّم التطبيق \"كما هو\" دون أي ضمانات صريحة أو ضمنية. لن يكون المطور مسؤولًا عن أي خسائر مباشرة أو غير مباشرة ناتجة عن استخدام التطبيق أو عدم الوصول إليه."
        ),
        (
            title: "تحديثات الشروط",
            body: "نحتفظ بالحق في تعديل هذه الشروط في أي وقت. سيتم إبلاغك بالتغييرات الجوهرية عبر التطبيق. استمرارك في استخدام التطبيق بعد أي تعديل يُعدّ قبولًا للشروط المحدثة."
        ),
        (
            title: "القانون المطبق",
            body: "تخضع هذه الشروط لقوانين المملكة العربية السعودية، وتسري الاختصاصات القضائية بموجب الأنظمة المعمول بها."
        ),
        (
            title: "التواصل معنا",
            body: "لأي استفسار أو ملاحظة حول شروط الاستخدام، تواصل معنا على:\ngm7morey@gmail.com"
        )
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .trailing, spacing: 24) {
                // Header
                VStack(alignment: .trailing, spacing: 8) {
                    Text("شروط الاستخدام")
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
        .navigationTitle("شروط الاستخدام")
        .navigationBarTitleDisplayMode(.inline)
    }
}
