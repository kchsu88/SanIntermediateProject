.class public final enum Lccsanandroidx/work/BackoffPolicy;
.super Ljava/lang/Enum;
.source "BackoffPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/work/BackoffPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/work/BackoffPolicy;

.field public static final enum EXPONENTIAL:Lccsanandroidx/work/BackoffPolicy;

.field public static final enum LINEAR:Lccsanandroidx/work/BackoffPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lccsanandroidx/work/BackoffPolicy;

    const-string v1, "EXPONENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/work/BackoffPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/work/BackoffPolicy;->EXPONENTIAL:Lccsanandroidx/work/BackoffPolicy;

    .line 39
    new-instance v1, Lccsanandroidx/work/BackoffPolicy;

    const-string v3, "LINEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/work/BackoffPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/work/BackoffPolicy;->LINEAR:Lccsanandroidx/work/BackoffPolicy;

    .line 29
    const/4 v3, 0x2

    new-array v3, v3, [Lccsanandroidx/work/BackoffPolicy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsanandroidx/work/BackoffPolicy;->$VALUES:[Lccsanandroidx/work/BackoffPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/work/BackoffPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lccsanandroidx/work/BackoffPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/work/BackoffPolicy;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/work/BackoffPolicy;
    .locals 1

    .line 29
    sget-object v0, Lccsanandroidx/work/BackoffPolicy;->$VALUES:[Lccsanandroidx/work/BackoffPolicy;

    invoke-virtual {v0}, [Lccsanandroidx/work/BackoffPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/work/BackoffPolicy;

    return-object v0
.end method
