.class public final enum Lccsankotlinx/android/extensions/CacheImplementation;
.super Ljava/lang/Enum;
.source "CacheImplementation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlinx/android/extensions/CacheImplementation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsankotlinx/android/extensions/CacheImplementation;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lccsankotlinx/android/extensions/CacheImplementation;",
        "",
        "(Ljava/lang/String;I)V",
        "SPARSE_ARRAY",
        "HASH_MAP",
        "NO_CACHE",
        "Companion",
        "kotlin-android-extensions-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsankotlinx/android/extensions/CacheImplementation;

.field public static final Companion:Lccsankotlinx/android/extensions/CacheImplementation$Companion;

.field private static final DEFAULT:Lccsankotlinx/android/extensions/CacheImplementation;

.field public static final enum HASH_MAP:Lccsankotlinx/android/extensions/CacheImplementation;

.field public static final enum NO_CACHE:Lccsankotlinx/android/extensions/CacheImplementation;

.field public static final enum SPARSE_ARRAY:Lccsankotlinx/android/extensions/CacheImplementation;


# direct methods
.method private static final synthetic $values()[Lccsankotlinx/android/extensions/CacheImplementation;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lccsankotlinx/android/extensions/CacheImplementation;

    sget-object v1, Lccsankotlinx/android/extensions/CacheImplementation;->SPARSE_ARRAY:Lccsankotlinx/android/extensions/CacheImplementation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lccsankotlinx/android/extensions/CacheImplementation;->HASH_MAP:Lccsankotlinx/android/extensions/CacheImplementation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lccsankotlinx/android/extensions/CacheImplementation;->NO_CACHE:Lccsankotlinx/android/extensions/CacheImplementation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lccsankotlinx/android/extensions/CacheImplementation;

    const-string v1, "SPARSE_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsankotlinx/android/extensions/CacheImplementation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsankotlinx/android/extensions/CacheImplementation;->SPARSE_ARRAY:Lccsankotlinx/android/extensions/CacheImplementation;

    .line 27
    new-instance v0, Lccsankotlinx/android/extensions/CacheImplementation;

    const-string v1, "HASH_MAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lccsankotlinx/android/extensions/CacheImplementation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsankotlinx/android/extensions/CacheImplementation;->HASH_MAP:Lccsankotlinx/android/extensions/CacheImplementation;

    .line 29
    new-instance v1, Lccsankotlinx/android/extensions/CacheImplementation;

    const-string v2, "NO_CACHE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lccsankotlinx/android/extensions/CacheImplementation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlinx/android/extensions/CacheImplementation;->NO_CACHE:Lccsankotlinx/android/extensions/CacheImplementation;

    invoke-static {}, Lccsankotlinx/android/extensions/CacheImplementation;->$values()[Lccsankotlinx/android/extensions/CacheImplementation;

    move-result-object v1

    sput-object v1, Lccsankotlinx/android/extensions/CacheImplementation;->$VALUES:[Lccsankotlinx/android/extensions/CacheImplementation;

    new-instance v1, Lccsankotlinx/android/extensions/CacheImplementation$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lccsankotlinx/android/extensions/CacheImplementation$Companion;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lccsankotlinx/android/extensions/CacheImplementation;->Companion:Lccsankotlinx/android/extensions/CacheImplementation$Companion;

    .line 33
    sput-object v0, Lccsankotlinx/android/extensions/CacheImplementation;->DEFAULT:Lccsankotlinx/android/extensions/CacheImplementation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lccsankotlinx/android/extensions/CacheImplementation;
    .locals 1

    .line 23
    sget-object v0, Lccsankotlinx/android/extensions/CacheImplementation;->DEFAULT:Lccsankotlinx/android/extensions/CacheImplementation;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsankotlinx/android/extensions/CacheImplementation;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lccsankotlinx/android/extensions/CacheImplementation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 35
    check-cast v0, Lccsankotlinx/android/extensions/CacheImplementation;

    return-object v0
.end method

.method public static values()[Lccsankotlinx/android/extensions/CacheImplementation;
    .locals 4

    sget-object v0, Lccsankotlinx/android/extensions/CacheImplementation;->$VALUES:[Lccsankotlinx/android/extensions/CacheImplementation;

    array-length v1, v0

    new-array v1, v1, [Lccsankotlinx/android/extensions/CacheImplementation;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    return-object v1
.end method
