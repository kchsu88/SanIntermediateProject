.class public Lccsancom/iab/omid/library/vungle/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lccsanandroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.3.16-Vungle"

    return-object v0
.end method

.method a(Lccsanandroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lccsancom/iab/omid/library/vungle/b;->b(Lccsanandroid/content/Context;)V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/iab/omid/library/vungle/b;->a(Z)V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/f;->a()Lccsancom/iab/omid/library/vungle/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/iab/omid/library/vungle/b/f;->a(Lccsanandroid/content/Context;)V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/b;->a()Lccsancom/iab/omid/library/vungle/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/iab/omid/library/vungle/b/b;->a(Lccsanandroid/content/Context;)V

    invoke-static {p1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanandroid/content/Context;)V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/d;->a()Lccsancom/iab/omid/library/vungle/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/iab/omid/library/vungle/b/d;->a(Lccsanandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lccsancom/iab/omid/library/vungle/b;->a:Z

    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/b;->a:Z

    return v0
.end method
