.class Lccsancom/vungle/warren/Vungle$14;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/Repository$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->updateCCPAStatus(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/persistence/Repository$LoadCallback<",
        "Lccsancom/vungle/warren/model/Cookie;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$repository:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$status:Lccsancom/vungle/warren/Vungle$Consent;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle$Consent;Lccsancom/vungle/warren/persistence/Repository;)V
    .locals 0

    .line 1621
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$14;->val$status:Lccsancom/vungle/warren/Vungle$Consent;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$14;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lccsancom/vungle/warren/model/Cookie;)V
    .locals 3
    .param p1, "ccpaConsent"    # Lccsancom/vungle/warren/model/Cookie;

    .line 1624
    if-nez p1, :cond_0

    .line 1625
    new-instance v0, Lccsancom/vungle/warren/model/Cookie;

    const-string v1, "ccpaIsImportantToVungle"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 1627
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$14;->val$status:Lccsancom/vungle/warren/Vungle$Consent;

    sget-object v1, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lccsancom/vungle/warren/Vungle$Consent;

    if-ne v0, v1, :cond_1

    .line 1628
    const-string v0, "opted_out"

    goto :goto_0

    :cond_1
    const-string v0, "opted_in"

    .line 1627
    :goto_0
    const-string v1, "ccpa_status"

    invoke-virtual {p1, v1, v0}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1629
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$14;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;Z)V

    .line 1630
    return-void
.end method

.method public bridge synthetic onLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1621
    check-cast p1, Lccsancom/vungle/warren/model/Cookie;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/Vungle$14;->onLoaded(Lccsancom/vungle/warren/model/Cookie;)V

    return-void
.end method
