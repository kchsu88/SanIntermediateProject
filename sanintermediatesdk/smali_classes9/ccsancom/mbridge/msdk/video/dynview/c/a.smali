.class public final enum Lccsancom/mbridge/msdk/video/dynview/c/a;
.super Ljava/lang/Enum;
.source "CusError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/mbridge/msdk/video/dynview/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsancom/mbridge/msdk/video/dynview/c/a;

.field public static final enum b:Lccsancom/mbridge/msdk/video/dynview/c/a;

.field public static final enum c:Lccsancom/mbridge/msdk/video/dynview/c/a;

.field public static final enum d:Lccsancom/mbridge/msdk/video/dynview/c/a;

.field private static final synthetic g:[Lccsancom/mbridge/msdk/video/dynview/c/a;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 11
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/c/a;

    const-string v1, "NOT_FOUND_VIEWOPTION"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "ViewOption is null"

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/video/dynview/c/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lccsancom/mbridge/msdk/video/dynview/c/a;->a:Lccsancom/mbridge/msdk/video/dynview/c/a;

    .line 12
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/c/a;

    const-string v3, "NOT_FOUND_CONTEXT"

    const/4 v4, 0x1

    const/4 v5, -0x2

    const-string v6, "Context is null"

    invoke-direct {v1, v3, v4, v5, v6}, Lccsancom/mbridge/msdk/video/dynview/c/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lccsancom/mbridge/msdk/video/dynview/c/a;->b:Lccsancom/mbridge/msdk/video/dynview/c/a;

    .line 13
    new-instance v3, Lccsancom/mbridge/msdk/video/dynview/c/a;

    const-string v5, "NOT_FOUND_LAYOUTNAME"

    const/4 v6, 0x2

    const/4 v7, -0x3

    const-string v8, "layout xml name is null"

    invoke-direct {v3, v5, v6, v7, v8}, Lccsancom/mbridge/msdk/video/dynview/c/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lccsancom/mbridge/msdk/video/dynview/c/a;->c:Lccsancom/mbridge/msdk/video/dynview/c/a;

    .line 14
    new-instance v5, Lccsancom/mbridge/msdk/video/dynview/c/a;

    const-string v7, "CAMPAIGNEX_IS_NULL"

    const/4 v8, 0x3

    const/4 v9, -0x4

    const-string v10, "Campaign size only one"

    invoke-direct {v5, v7, v8, v9, v10}, Lccsancom/mbridge/msdk/video/dynview/c/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lccsancom/mbridge/msdk/video/dynview/c/a;->d:Lccsancom/mbridge/msdk/video/dynview/c/a;

    .line 9
    const/4 v7, 0x4

    new-array v7, v7, [Lccsancom/mbridge/msdk/video/dynview/c/a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsancom/mbridge/msdk/video/dynview/c/a;->g:[Lccsancom/mbridge/msdk/video/dynview/c/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lccsancom/mbridge/msdk/video/dynview/c/a;->e:I

    .line 21
    iput-object p4, p0, Lccsancom/mbridge/msdk/video/dynview/c/a;->f:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/mbridge/msdk/video/dynview/c/a;
    .locals 1

    .line 9
    const-class v0, Lccsancom/mbridge/msdk/video/dynview/c/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/video/dynview/c/a;

    return-object p0
.end method

.method public static values()[Lccsancom/mbridge/msdk/video/dynview/c/a;
    .locals 1

    .line 9
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/c/a;->g:[Lccsancom/mbridge/msdk/video/dynview/c/a;

    invoke-virtual {v0}, [Lccsancom/mbridge/msdk/video/dynview/c/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/video/dynview/c/a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 25
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/c/a;->e:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/c/a;->f:Ljava/lang/String;

    return-object v0
.end method
