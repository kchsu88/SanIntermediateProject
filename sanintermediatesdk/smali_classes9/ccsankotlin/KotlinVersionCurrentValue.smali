.class final Lccsankotlin/KotlinVersionCurrentValue;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lccsankotlin/KotlinVersionCurrentValue;",
        "",
        "()V",
        "get",
        "Lccsankotlin/KotlinVersion;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/KotlinVersionCurrentValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lccsankotlin/KotlinVersionCurrentValue;

    invoke-direct {v0}, Lccsankotlin/KotlinVersionCurrentValue;-><init>()V

    sput-object v0, Lccsankotlin/KotlinVersionCurrentValue;->INSTANCE:Lccsankotlin/KotlinVersionCurrentValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get()Lccsankotlin/KotlinVersion;
    .locals 4
    .annotation runtime Lccsankotlin/jvm/JvmStatic;
    .end annotation

    .line 82
    new-instance v0, Lccsankotlin/KotlinVersion;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lccsankotlin/KotlinVersion;-><init>(III)V

    return-object v0
.end method
