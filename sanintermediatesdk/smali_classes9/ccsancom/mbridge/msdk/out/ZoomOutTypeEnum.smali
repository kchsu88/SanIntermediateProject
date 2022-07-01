.class public final enum Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;
.super Ljava/lang/Enum;
.source "ZoomOutTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

.field public static final enum BigView:Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

.field public static final enum FloatBall:Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

.field public static final enum MediumView:Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

.field public static final enum SmallView:Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 5
    new-instance v0, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    const-string v1, "FloatBall"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;->FloatBall:Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    .line 6
    new-instance v1, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    const-string v4, "BigView"

    const/4 v5, 0x4

    invoke-direct {v1, v4, v3, v5}, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;->BigView:Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    .line 7
    new-instance v4, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    const-string v6, "MediumView"

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-direct {v4, v6, v7, v8}, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;->MediumView:Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    .line 8
    new-instance v6, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    const-string v9, "SmallView"

    invoke-direct {v6, v9, v8, v7}, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;->SmallView:Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    .line 4
    new-array v5, v5, [Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    aput-object v6, v5, v8

    sput-object v5, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;->$VALUES:[Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;->index:I

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;
    .locals 1

    .line 4
    const-class v0, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    return-object p0
.end method

.method public static values()[Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;
    .locals 1

    .line 4
    sget-object v0, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;->$VALUES:[Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    invoke-virtual {v0}, [Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 14
    iget v0, p0, Lccsancom/mbridge/msdk/out/ZoomOutTypeEnum;->index:I

    return v0
.end method
