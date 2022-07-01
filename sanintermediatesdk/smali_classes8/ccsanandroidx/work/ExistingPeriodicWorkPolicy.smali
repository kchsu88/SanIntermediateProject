.class public final enum Lccsanandroidx/work/ExistingPeriodicWorkPolicy;
.super Ljava/lang/Enum;
.source "ExistingPeriodicWorkPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/work/ExistingPeriodicWorkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

.field public static final enum KEEP:Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

.field public static final enum REPLACE:Lccsanandroidx/work/ExistingPeriodicWorkPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    .line 36
    new-instance v1, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    const-string v3, "KEEP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    .line 24
    const/4 v3, 0x2

    new-array v3, v3, [Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;->$VALUES:[Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/work/ExistingPeriodicWorkPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/work/ExistingPeriodicWorkPolicy;
    .locals 1

    .line 24
    sget-object v0, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;->$VALUES:[Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    invoke-virtual {v0}, [Lccsanandroidx/work/ExistingPeriodicWorkPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    return-object v0
.end method
