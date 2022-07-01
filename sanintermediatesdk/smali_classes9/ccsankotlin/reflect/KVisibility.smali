.class public final enum Lccsankotlin/reflect/KVisibility;
.super Ljava/lang/Enum;
.source "KVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsankotlin/reflect/KVisibility;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lccsankotlin/reflect/KVisibility;",
        "",
        "(Ljava/lang/String;I)V",
        "PUBLIC",
        "PROTECTED",
        "INTERNAL",
        "PRIVATE",
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
.field private static final synthetic $VALUES:[Lccsankotlin/reflect/KVisibility;

.field public static final enum INTERNAL:Lccsankotlin/reflect/KVisibility;

.field public static final enum PRIVATE:Lccsankotlin/reflect/KVisibility;

.field public static final enum PROTECTED:Lccsankotlin/reflect/KVisibility;

.field public static final enum PUBLIC:Lccsankotlin/reflect/KVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lccsankotlin/reflect/KVisibility;

    new-instance v1, Lccsankotlin/reflect/KVisibility;

    const-string v2, "PUBLIC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lccsankotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/reflect/KVisibility;->PUBLIC:Lccsankotlin/reflect/KVisibility;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/reflect/KVisibility;

    const-string v2, "PROTECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lccsankotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/reflect/KVisibility;->PROTECTED:Lccsankotlin/reflect/KVisibility;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/reflect/KVisibility;

    const-string v2, "INTERNAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lccsankotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/reflect/KVisibility;->INTERNAL:Lccsankotlin/reflect/KVisibility;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/reflect/KVisibility;

    const-string v2, "PRIVATE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lccsankotlin/reflect/KVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/reflect/KVisibility;->PRIVATE:Lccsankotlin/reflect/KVisibility;

    aput-object v1, v0, v3

    sput-object v0, Lccsankotlin/reflect/KVisibility;->$VALUES:[Lccsankotlin/reflect/KVisibility;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsankotlin/reflect/KVisibility;
    .locals 1

    const-class v0, Lccsankotlin/reflect/KVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsankotlin/reflect/KVisibility;

    return-object p0
.end method

.method public static values()[Lccsankotlin/reflect/KVisibility;
    .locals 1

    sget-object v0, Lccsankotlin/reflect/KVisibility;->$VALUES:[Lccsankotlin/reflect/KVisibility;

    invoke-virtual {v0}, [Lccsankotlin/reflect/KVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsankotlin/reflect/KVisibility;

    return-object v0
.end method
