.class public final enum Lccsanenhance/b/c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanenhance/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsanenhance/b/c;

.field public static final enum b:Lccsanenhance/b/c;

.field public static final enum c:Lccsanenhance/b/c;

.field public static final enum d:Lccsanenhance/b/c;

.field public static final enum e:Lccsanenhance/b/c;

.field public static final enum f:Lccsanenhance/b/c;

.field public static final synthetic g:[Lccsanenhance/b/c;


# instance fields
.field public h:Ljava/lang/String;

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lccsanenhance/b/c;

    const-string v1, "LAUNCH_PENDING"

    const/4 v2, 0x0

    const-string v3, "launch_pending"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanenhance/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lccsanenhance/b/c;->a:Lccsanenhance/b/c;

    .line 5
    new-instance v1, Lccsanenhance/b/c;

    const-string v3, "LAUNCH_SCHEDULED"

    const-string v5, "launch_scheduled"

    const/4 v6, 0x2

    invoke-direct {v1, v3, v4, v5, v6}, Lccsanenhance/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lccsanenhance/b/c;->b:Lccsanenhance/b/c;

    .line 9
    new-instance v3, Lccsanenhance/b/c;

    const-string v5, "LAUNCH_FAILED"

    const-string v7, "launch_failed"

    const/4 v8, 0x4

    invoke-direct {v3, v5, v6, v7, v8}, Lccsanenhance/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lccsanenhance/b/c;->c:Lccsanenhance/b/c;

    .line 13
    new-instance v5, Lccsanenhance/b/c;

    const-string v7, "LAUNCH_UNINSTALLED"

    const/4 v9, 0x3

    const-string v10, "launch_uninstalled"

    invoke-direct {v5, v7, v9, v10, v8}, Lccsanenhance/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lccsanenhance/b/c;->d:Lccsanenhance/b/c;

    .line 17
    new-instance v7, Lccsanenhance/b/c;

    const-string v10, "LAUNCH_EXECUTED"

    const-string v11, "launch_executed"

    const/16 v12, 0x10

    invoke-direct {v7, v10, v8, v11, v12}, Lccsanenhance/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lccsanenhance/b/c;->e:Lccsanenhance/b/c;

    .line 21
    new-instance v10, Lccsanenhance/b/c;

    const-string v11, "LAUNCH_SUCCEED"

    const/4 v12, 0x5

    const-string v13, "launch_succeed"

    const/16 v14, 0x20

    invoke-direct {v10, v11, v12, v13, v14}, Lccsanenhance/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lccsanenhance/b/c;->f:Lccsanenhance/b/c;

    .line 22
    const/4 v11, 0x6

    new-array v11, v11, [Lccsanenhance/b/c;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v9

    aput-object v7, v11, v8

    aput-object v10, v11, v12

    sput-object v11, Lccsanenhance/b/c;->g:[Lccsanenhance/b/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lccsanenhance/b/c;->h:Ljava/lang/String;

    .line 3
    iput p4, p0, Lccsanenhance/b/c;->i:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lccsanenhance/b/c;
    .locals 5

    .line 1
    invoke-static {}, Lccsanenhance/b/c;->values()[Lccsanenhance/b/c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lccsanenhance/b/c;->h:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanenhance/b/c;
    .locals 1

    .line 1
    const-class v0, Lccsanenhance/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsanenhance/b/c;

    return-object p0
.end method

.method public static values()[Lccsanenhance/b/c;
    .locals 1

    .line 1
    sget-object v0, Lccsanenhance/b/c;->g:[Lccsanenhance/b/c;

    invoke-virtual {v0}, [Lccsanenhance/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanenhance/b/c;

    return-object v0
.end method
