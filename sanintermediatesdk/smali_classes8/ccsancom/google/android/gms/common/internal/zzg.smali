.class public final Lccsancom/google/android/gms/common/internal/zzg;
.super Ljava/lang/Object;


# static fields
.field private static final zzed:Lccsanandroid/net/Uri;

.field private static final zzee:Lccsanandroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-string v0, "https://plus.google.com/"

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 22
    sput-object v0, Lccsancom/google/android/gms/common/internal/zzg;->zzed:Lccsanandroid/net/Uri;

    .line 23
    invoke-virtual {v0}, Lccsanandroid/net/Uri;->buildUpon()Lccsanandroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "circles"

    invoke-virtual {v0, v1}, Lccsanandroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "find"

    invoke-virtual {v0, v1}, Lccsanandroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri$Builder;->build()Lccsanandroid/net/Uri;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/gms/common/internal/zzg;->zzee:Lccsanandroid/net/Uri;

    .line 24
    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;
    .locals 3

    .line 5
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    nop

    .line 7
    nop

    .line 8
    const-string v1, "market://details"

    invoke-static {v1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lccsanandroid/net/Uri;->buildUpon()Lccsanandroid/net/Uri$Builder;

    move-result-object v1

    .line 10
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object p0

    .line 11
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    const-string v1, "pcampaignid"

    invoke-virtual {p0, v1, p1}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    .line 13
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/net/Uri$Builder;->build()Lccsanandroid/net/Uri;

    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    .line 15
    const-string p0, "com.android.vending"

    invoke-virtual {v0, p0}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 16
    const/high16 p0, 0x80000

    invoke-virtual {v0, p0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 17
    return-object v0
.end method

.method public static zzg(Ljava/lang/String;)Lccsanandroid/content/Intent;
    .locals 2

    .line 1
    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lccsanandroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 2
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    .line 4
    return-object v0
.end method

.method public static zzs()Lccsanandroid/content/Intent;
    .locals 2

    .line 18
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v1, "com.google.android.wearable.app"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 20
    return-object v0
.end method
