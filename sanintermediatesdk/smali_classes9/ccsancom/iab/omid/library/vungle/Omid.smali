.class public final Lccsancom/iab/omid/library/vungle/Omid;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lccsancom/iab/omid/library/vungle/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsancom/iab/omid/library/vungle/b;

    invoke-direct {v0}, Lccsancom/iab/omid/library/vungle/b;-><init>()V

    sput-object v0, Lccsancom/iab/omid/library/vungle/Omid;->INSTANCE:Lccsancom/iab/omid/library/vungle/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activate(Lccsanandroid/content/Context;)V
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/Omid;->INSTANCE:Lccsancom/iab/omid/library/vungle/b;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsancom/iab/omid/library/vungle/b;->a(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/Omid;->INSTANCE:Lccsancom/iab/omid/library/vungle/b;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isActive()Z
    .locals 1

    sget-object v0, Lccsancom/iab/omid/library/vungle/Omid;->INSTANCE:Lccsancom/iab/omid/library/vungle/b;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/b;->b()Z

    move-result v0

    return v0
.end method
