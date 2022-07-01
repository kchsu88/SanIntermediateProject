.class Lccsancom/applovin/impl/sdk/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/b/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/b/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/b/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/b$1;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/b$1;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/b/b;)Lccsanandroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/b$1;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/b/b;)Lccsanandroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
