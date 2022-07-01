.class public final enum Lccsanandroidx/work/WorkInfo$State;
.super Ljava/lang/Enum;
.source "WorkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/WorkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/work/WorkInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/work/WorkInfo$State;

.field public static final enum BLOCKED:Lccsanandroidx/work/WorkInfo$State;

.field public static final enum CANCELLED:Lccsanandroidx/work/WorkInfo$State;

.field public static final enum ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

.field public static final enum FAILED:Lccsanandroidx/work/WorkInfo$State;

.field public static final enum RUNNING:Lccsanandroidx/work/WorkInfo$State;

.field public static final enum SUCCEEDED:Lccsanandroidx/work/WorkInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 150
    new-instance v0, Lccsanandroidx/work/WorkInfo$State;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    .line 155
    new-instance v1, Lccsanandroidx/work/WorkInfo$State;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/work/WorkInfo$State;->RUNNING:Lccsanandroidx/work/WorkInfo$State;

    .line 162
    new-instance v3, Lccsanandroidx/work/WorkInfo$State;

    const-string v5, "SUCCEEDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsanandroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsanandroidx/work/WorkInfo$State;->SUCCEEDED:Lccsanandroidx/work/WorkInfo$State;

    .line 168
    new-instance v5, Lccsanandroidx/work/WorkInfo$State;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsanandroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsanandroidx/work/WorkInfo$State;->FAILED:Lccsanandroidx/work/WorkInfo$State;

    .line 174
    new-instance v7, Lccsanandroidx/work/WorkInfo$State;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsanandroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsanandroidx/work/WorkInfo$State;->BLOCKED:Lccsanandroidx/work/WorkInfo$State;

    .line 180
    new-instance v9, Lccsanandroidx/work/WorkInfo$State;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccsanandroidx/work/WorkInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccsanandroidx/work/WorkInfo$State;->CANCELLED:Lccsanandroidx/work/WorkInfo$State;

    .line 144
    const/4 v11, 0x6

    new-array v11, v11, [Lccsanandroidx/work/WorkInfo$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lccsanandroidx/work/WorkInfo$State;->$VALUES:[Lccsanandroidx/work/WorkInfo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 144
    const-class v0, Lccsanandroidx/work/WorkInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/work/WorkInfo$State;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/work/WorkInfo$State;
    .locals 1

    .line 144
    sget-object v0, Lccsanandroidx/work/WorkInfo$State;->$VALUES:[Lccsanandroidx/work/WorkInfo$State;

    invoke-virtual {v0}, [Lccsanandroidx/work/WorkInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/work/WorkInfo$State;

    return-object v0
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .line 189
    sget-object v0, Lccsanandroidx/work/WorkInfo$State;->SUCCEEDED:Lccsanandroidx/work/WorkInfo$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsanandroidx/work/WorkInfo$State;->FAILED:Lccsanandroidx/work/WorkInfo$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsanandroidx/work/WorkInfo$State;->CANCELLED:Lccsanandroidx/work/WorkInfo$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
