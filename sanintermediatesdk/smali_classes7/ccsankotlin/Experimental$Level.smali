.class public final enum Lccsankotlin/Experimental$Level;
.super Ljava/lang/Enum;
.source "Experimental.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/Experimental;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsankotlin/Experimental$Level;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lccsankotlin/Experimental$Level;",
        "",
        "(Ljava/lang/String;I)V",
        "WARNING",
        "ERROR",
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
.field private static final synthetic $VALUES:[Lccsankotlin/Experimental$Level;

.field public static final enum ERROR:Lccsankotlin/Experimental$Level;

.field public static final enum WARNING:Lccsankotlin/Experimental$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lccsankotlin/Experimental$Level;

    new-instance v1, Lccsankotlin/Experimental$Level;

    const-string v2, "WARNING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lccsankotlin/Experimental$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/Experimental$Level;->WARNING:Lccsankotlin/Experimental$Level;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/Experimental$Level;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lccsankotlin/Experimental$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/Experimental$Level;->ERROR:Lccsankotlin/Experimental$Level;

    aput-object v1, v0, v3

    sput-object v0, Lccsankotlin/Experimental$Level;->$VALUES:[Lccsankotlin/Experimental$Level;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsankotlin/Experimental$Level;
    .locals 1

    const-class v0, Lccsankotlin/Experimental$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsankotlin/Experimental$Level;

    return-object p0
.end method

.method public static values()[Lccsankotlin/Experimental$Level;
    .locals 1

    sget-object v0, Lccsankotlin/Experimental$Level;->$VALUES:[Lccsankotlin/Experimental$Level;

    invoke-virtual {v0}, [Lccsankotlin/Experimental$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsankotlin/Experimental$Level;

    return-object v0
.end method
