.class public final Lccsankotlin/reflect/WildcardTypeImpl$Companion;
.super Ljava/lang/Object;
.source "TypesJVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/reflect/WildcardTypeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lccsankotlin/reflect/WildcardTypeImpl$Companion;",
        "",
        "()V",
        "STAR",
        "Lccsankotlin/reflect/WildcardTypeImpl;",
        "getSTAR",
        "()Lccsankotlin/reflect/WildcardTypeImpl;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lccsankotlin/jvm/internal/DefaultConstructorMarker;

    .line 178
    invoke-direct {p0}, Lccsankotlin/reflect/WildcardTypeImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSTAR()Lccsankotlin/reflect/WildcardTypeImpl;
    .locals 1

    .line 179
    invoke-static {}, Lccsankotlin/reflect/WildcardTypeImpl;->access$getSTAR$cp()Lccsankotlin/reflect/WildcardTypeImpl;

    move-result-object v0

    return-object v0
.end method
