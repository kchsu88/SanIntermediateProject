.class public Lccsancom/applovin/impl/mediation/debugger/a/b/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.permission."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/d;->b:Ljava/lang/String;

    invoke-static {p1, p3}, Lccsancom/applovin/impl/sdk/utils/f;->a(Ljava/lang/String;Lccsanandroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/d;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/b/d;->c:Z

    return v0
.end method
