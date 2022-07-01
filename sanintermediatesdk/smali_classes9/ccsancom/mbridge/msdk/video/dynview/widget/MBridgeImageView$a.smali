.class public final enum Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;
.super Ljava/lang/Enum;
.source "MBridgeImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

.field public static final enum b:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

.field public static final enum c:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

.field private static final synthetic e:[Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 254
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    .line 259
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    const-string v3, "CIRCLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->b:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    .line 264
    new-instance v3, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    const-string v5, "ROUND_RECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->c:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    .line 249
    const/4 v5, 0x3

    new-array v5, v5, [Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->e:[Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 267
    iput p3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->d:I

    .line 268
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;
    .locals 1

    .line 249
    const-class v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    return-object p0
.end method

.method public static values()[Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;
    .locals 1

    .line 249
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->e:[Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    invoke-virtual {v0}, [Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    return-object v0
.end method
