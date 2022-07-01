.class Lccsancom/applovin/impl/sdk/j$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/app/Activity;

.field final synthetic b:Lccsancom/applovin/impl/sdk/j;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/j;Lccsanandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/j$4;->b:Lccsancom/applovin/impl/sdk/j;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/j$4;->a:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$4;->b:Lccsancom/applovin/impl/sdk/j;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j$4;->a:Lccsanandroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/j;->a(Lccsanandroid/app/Activity;Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V

    return-void
.end method
