.class Lccsancom/applovin/impl/adview/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static synthetic a(Lccsanandroid/content/res/Resources;F)F
    .locals 0

    invoke-static {p0, p1}, Lccsancom/applovin/impl/adview/h$a;->d(Lccsanandroid/content/res/Resources;F)F

    move-result p0

    return p0
.end method

.method static synthetic b(Lccsanandroid/content/res/Resources;F)F
    .locals 0

    invoke-static {p0, p1}, Lccsancom/applovin/impl/adview/h$a;->c(Lccsanandroid/content/res/Resources;F)F

    move-result p0

    return p0
.end method

.method private static c(Lccsanandroid/content/res/Resources;F)F
    .locals 0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    return p1
.end method

.method private static d(Lccsanandroid/content/res/Resources;F)F
    .locals 0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, p0

    return p1
.end method
