.class public final enum Lccsankotlin/io/OnErrorAction;
.super Ljava/lang/Enum;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsankotlin/io/OnErrorAction;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lccsankotlin/io/OnErrorAction;",
        "",
        "(Ljava/lang/String;I)V",
        "SKIP",
        "TERMINATE",
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
.field private static final synthetic $VALUES:[Lccsankotlin/io/OnErrorAction;

.field public static final enum SKIP:Lccsankotlin/io/OnErrorAction;

.field public static final enum TERMINATE:Lccsankotlin/io/OnErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lccsankotlin/io/OnErrorAction;

    new-instance v1, Lccsankotlin/io/OnErrorAction;

    const-string v2, "SKIP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lccsankotlin/io/OnErrorAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/io/OnErrorAction;->SKIP:Lccsankotlin/io/OnErrorAction;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/io/OnErrorAction;

    const-string v2, "TERMINATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lccsankotlin/io/OnErrorAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/io/OnErrorAction;->TERMINATE:Lccsankotlin/io/OnErrorAction;

    aput-object v1, v0, v3

    sput-object v0, Lccsankotlin/io/OnErrorAction;->$VALUES:[Lccsankotlin/io/OnErrorAction;

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

    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsankotlin/io/OnErrorAction;
    .locals 1

    const-class v0, Lccsankotlin/io/OnErrorAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsankotlin/io/OnErrorAction;

    return-object p0
.end method

.method public static values()[Lccsankotlin/io/OnErrorAction;
    .locals 1

    sget-object v0, Lccsankotlin/io/OnErrorAction;->$VALUES:[Lccsankotlin/io/OnErrorAction;

    invoke-virtual {v0}, [Lccsankotlin/io/OnErrorAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsankotlin/io/OnErrorAction;

    return-object v0
.end method
