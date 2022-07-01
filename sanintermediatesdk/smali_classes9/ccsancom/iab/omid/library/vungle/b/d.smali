.class public Lccsancom/iab/omid/library/vungle/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lccsancom/iab/omid/library/vungle/b/d;


# instance fields
.field private b:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/iab/omid/library/vungle/b/d;

    invoke-direct {v0}, Lccsancom/iab/omid/library/vungle/b/d;-><init>()V

    sput-object v0, Lccsancom/iab/omid/library/vungle/b/d;->a:Lccsancom/iab/omid/library/vungle/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/iab/omid/library/vungle/b/d;
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/b/d;->a:Lccsancom/iab/omid/library/vungle/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Lccsanandroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/b/d;->b:Lccsanandroid/content/Context;

    return-void
.end method

.method public b()Lccsanandroid/content/Context;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/d;->b:Lccsanandroid/content/Context;

    return-object v0
.end method
