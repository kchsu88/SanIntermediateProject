.class Lccsancom/vungle/warren/Vungle$13;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lccsancom/vungle/warren/persistence/Repository$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->saveGDPRConsent(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
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
.field final synthetic val$consentMessageVersion:Ljava/lang/String;

.field final synthetic val$repository:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$status:Lccsancom/vungle/warren/Vungle$Consent;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;Lccsancom/vungle/warren/persistence/Repository;)V
    .locals 0

    .line 1517
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$13;->val$status:Lccsancom/vungle/warren/Vungle$Consent;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$13;->val$consentMessageVersion:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/vungle/warren/Vungle$13;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lccsancom/vungle/warren/model/Cookie;)V
    .locals 4
    .param p1, "gdprConsent"    # Lccsancom/vungle/warren/model/Cookie;

    .line 1520
    if-nez p1, :cond_0

    .line 1522
    new-instance v0, Lccsancom/vungle/warren/model/Cookie;

    const-string v1, "consentIsImportantToVungle"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 1524
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$13;->val$status:Lccsancom/vungle/warren/Vungle$Consent;

    sget-object v1, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_IN:Lccsancom/vungle/warren/Vungle$Consent;

    if-ne v0, v1, :cond_1

    const-string v0, "opted_in"

    goto :goto_0

    :cond_1
    const-string v0, "opted_out"

    :goto_0
    const-string v1, "consent_status"

    invoke-virtual {p1, v1, v0}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1526
    const-string v0, "consent_source"

    const-string v1, "publisher"

    invoke-virtual {p1, v0, v1}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1527
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$13;->val$consentMessageVersion:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    const-string v1, "consent_message_version"

    invoke-virtual {p1, v1, v0}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1528
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$13;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;Z)V

    .line 1529
    return-void
.end method

.method public bridge synthetic onLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1517
    check-cast p1, Lccsancom/vungle/warren/model/Cookie;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/Vungle$13;->onLoaded(Lccsancom/vungle/warren/model/Cookie;)V

    return-void
.end method
