.class public final enum Lccsancom/mbridge/msdk/foundation/same/e/a$a;
.super Ljava/lang/Enum;
.source "CommonTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/same/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/mbridge/msdk/foundation/same/e/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

.field public static final enum b:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

.field public static final enum c:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

.field public static final enum d:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

.field public static final enum e:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

.field private static final synthetic f:[Lccsancom/mbridge/msdk/foundation/same/e/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 38
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/e/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->a:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/e/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->b:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    new-instance v3, Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/mbridge/msdk/foundation/same/e/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->c:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    new-instance v5, Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    const-string v7, "CANCEL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/mbridge/msdk/foundation/same/e/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->d:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    new-instance v7, Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    const-string v9, "FINISH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsancom/mbridge/msdk/foundation/same/e/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->e:Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    .line 37
    const/4 v9, 0x5

    new-array v9, v9, [Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->f:[Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/e/a$a;
    .locals 1

    .line 37
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    return-object p0
.end method

.method public static values()[Lccsancom/mbridge/msdk/foundation/same/e/a$a;
    .locals 1

    .line 37
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/e/a$a;->f:[Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    invoke-virtual {v0}, [Lccsancom/mbridge/msdk/foundation/same/e/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/foundation/same/e/a$a;

    return-object v0
.end method
