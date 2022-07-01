.class public final Lccsancom/google/android/gms/common/AccountPicker;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
.end method

.method public static newChooseAccountIntent(Lccsanandroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/accounts/Account;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/accounts/Account;",
            ">;[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lccsanandroid/os/Bundle;",
            ")",
            "Lccsanandroid/content/Intent;"
        }
    .end annotation

    .line 3
    nop

    .line 4
    nop

    .line 5
    nop

    .line 6
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0}, Lccsanandroid/content/Intent;-><init>()V

    .line 7
    const/4 v1, 0x1

    const-string v2, "We only support hostedDomain filter for account chip styled account picker"

    invoke-static {v1, v2}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    nop

    .line 9
    const-string v1, "com.google.android.gms.common.account.CHOOSE_ACCOUNT"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 10
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 11
    const-string v1, "allowableAccounts"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Lccsanandroid/content/Intent;

    .line 12
    const-string p1, "allowableAccountTypes"

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 13
    const-string p1, "addAccountOptions"

    invoke-virtual {v0, p1, p7}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroid/content/Intent;

    .line 14
    const-string/jumbo p1, "selectedAccount"

    invoke-virtual {v0, p1, p0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    .line 15
    const-string p0, "alwaysPromptForAccount"

    invoke-virtual {v0, p0, p3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 16
    const-string p0, "descriptionTextOverride"

    invoke-virtual {v0, p0, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 17
    const-string p0, "authTokenType"

    invoke-virtual {v0, p0, p5}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 18
    const-string p0, "addAccountRequiredFeatures"

    invoke-virtual {v0, p0, p6}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 19
    const-string/jumbo p0, "setGmsCoreAccount"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 20
    const-string p0, "overrideTheme"

    invoke-virtual {v0, p0, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 21
    const-string p0, "overrideCustomTheme"

    invoke-virtual {v0, p0, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 22
    const-string p0, "hostedDomainFilter"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 23
    nop

    .line 24
    return-object v0
.end method
