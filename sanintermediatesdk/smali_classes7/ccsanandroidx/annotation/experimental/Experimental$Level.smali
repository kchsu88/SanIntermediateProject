.class public final enum Lccsanandroidx/annotation/experimental/Experimental$Level;
.super Ljava/lang/Enum;
.source "Experimental.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/annotation/experimental/Experimental;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/annotation/experimental/Experimental$Level;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lccsanandroidx/annotation/experimental/Experimental$Level;",
        "",
        "(Ljava/lang/String;I)V",
        "WARNING",
        "ERROR",
        "annotation-experimental_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/annotation/experimental/Experimental$Level;

.field public static final enum ERROR:Lccsanandroidx/annotation/experimental/Experimental$Level;

.field public static final enum WARNING:Lccsanandroidx/annotation/experimental/Experimental$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lccsanandroidx/annotation/experimental/Experimental$Level;

    new-instance v1, Lccsanandroidx/annotation/experimental/Experimental$Level;

    const-string v2, "WARNING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lccsanandroidx/annotation/experimental/Experimental$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/annotation/experimental/Experimental$Level;->WARNING:Lccsanandroidx/annotation/experimental/Experimental$Level;

    aput-object v1, v0, v3

    new-instance v1, Lccsanandroidx/annotation/experimental/Experimental$Level;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lccsanandroidx/annotation/experimental/Experimental$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/annotation/experimental/Experimental$Level;->ERROR:Lccsanandroidx/annotation/experimental/Experimental$Level;

    aput-object v1, v0, v3

    sput-object v0, Lccsanandroidx/annotation/experimental/Experimental$Level;->$VALUES:[Lccsanandroidx/annotation/experimental/Experimental$Level;

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

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/annotation/experimental/Experimental$Level;
    .locals 1

    const-class v0, Lccsanandroidx/annotation/experimental/Experimental$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsanandroidx/annotation/experimental/Experimental$Level;

    return-object p0
.end method

.method public static values()[Lccsanandroidx/annotation/experimental/Experimental$Level;
    .locals 1

    sget-object v0, Lccsanandroidx/annotation/experimental/Experimental$Level;->$VALUES:[Lccsanandroidx/annotation/experimental/Experimental$Level;

    invoke-virtual {v0}, [Lccsanandroidx/annotation/experimental/Experimental$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/annotation/experimental/Experimental$Level;

    return-object v0
.end method
