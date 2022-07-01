.class public Lccsancom/iab/omid/library/vungle/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lccsancom/iab/omid/library/vungle/e/a;

.field private final b:Ljava/lang/String;

.field private final c:Lccsancom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/view/View;Lccsancom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsancom/iab/omid/library/vungle/e/a;

    invoke-direct {v0, p1}, Lccsancom/iab/omid/library/vungle/e/a;-><init>(Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/b/c;->a:Lccsancom/iab/omid/library/vungle/e/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/b/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/iab/omid/library/vungle/b/c;->c:Lccsancom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;

    iput-object p3, p0, Lccsancom/iab/omid/library/vungle/b/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lccsancom/iab/omid/library/vungle/e/a;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/c;->a:Lccsancom/iab/omid/library/vungle/e/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lccsancom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/c;->c:Lccsancom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/b/c;->d:Ljava/lang/String;

    return-object v0
.end method
