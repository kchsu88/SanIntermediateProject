.class public final enum Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/core/AdLoadStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdLoadTiming"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

.field public static final enum DEFAULT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

.field public static final enum PRELOAD:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

.field public static final enum PRELOAD_AFTER_SHOWN:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

.field public static final enum START_LOAD:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

.field public static final enum START_LOAD_IN_TIME:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;


# instance fields
.field mLoadTiming:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->DEFAULT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 2
    new-instance v1, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    const-string v3, "PRELOAD"

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-direct {v1, v3, v4, v5}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->PRELOAD:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 3
    new-instance v3, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    const-string v5, "PRELOAD_AFTER_SHOWN"

    const/4 v6, 0x2

    const/16 v7, 0x14

    invoke-direct {v3, v5, v6, v7}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->PRELOAD_AFTER_SHOWN:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 4
    new-instance v5, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    const-string v7, "START_LOAD"

    const/4 v8, 0x3

    const/16 v9, 0x1e

    invoke-direct {v5, v7, v8, v9}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->START_LOAD:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 5
    new-instance v7, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    const-string v9, "START_LOAD_IN_TIME"

    const/4 v10, 0x4

    const/16 v11, 0x28

    invoke-direct {v7, v9, v10, v11}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->START_LOAD_IN_TIME:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 6
    const/4 v9, 0x5

    new-array v9, v9, [Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->$VALUES:[Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->mLoadTiming:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;
    .locals 1

    .line 1
    const-class v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    return-object p0
.end method

.method public static values()[Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->$VALUES:[Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    invoke-virtual {v0}, [Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 1
    iget v0, p0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->mLoadTiming:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
