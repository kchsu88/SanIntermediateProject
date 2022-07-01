.class public final Lccsancom/google/android/gms/common/internal/ResourceUtils;
.super Ljava/lang/Object;


# static fields
.field private static final zzet:Lccsanandroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lccsanandroid/net/Uri$Builder;

    invoke-direct {v0}, Lccsanandroid/net/Uri$Builder;-><init>()V

    .line 3
    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Lccsanandroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Lccsanandroid/net/Uri$Builder;->authority(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v0

    .line 5
    const-string v1, "drawable"

    invoke-virtual {v0, v1}, Lccsanandroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lccsanandroid/net/Uri$Builder;->build()Lccsanandroid/net/Uri;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/gms/common/internal/ResourceUtils;->zzet:Lccsanandroid/net/Uri;

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
