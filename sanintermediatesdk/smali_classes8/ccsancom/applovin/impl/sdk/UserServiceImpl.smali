.class public Lccsancom/applovin/impl/sdk/UserServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinUserService;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/UserServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    return-void
.end method


# virtual methods
.method public showConsentDialog(Lccsanandroid/app/Activity;Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/UserServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->U()Lccsancom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/applovin/impl/sdk/j;->a(Lccsanandroid/app/Activity;Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UserService{}"

    return-object v0
.end method
