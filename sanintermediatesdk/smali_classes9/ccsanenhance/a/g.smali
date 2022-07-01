.class public final enum Lccsanenhance/a/g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanenhance/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lccsanenhance/a/g;

.field public static final enum b:Lccsanenhance/a/g;

.field public static final enum c:Lccsanenhance/a/g;

.field public static final enum d:Lccsanenhance/a/g;

.field public static final synthetic e:[Lccsanenhance/a/g;


# instance fields
.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lccsanenhance/a/g;

    const-string v1, "NETWORK_CONNECT"

    const/4 v2, 0x0

    const-string v3, "launch_network_connect"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanenhance/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lccsanenhance/a/g;->a:Lccsanenhance/a/g;

    .line 5
    new-instance v1, Lccsanenhance/a/g;

    const-string v3, "ACTIVITY_RESUMED"

    const-string v5, "launch_activity_resumed"

    const/4 v6, 0x2

    invoke-direct {v1, v3, v4, v5, v6}, Lccsanenhance/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lccsanenhance/a/g;->b:Lccsanenhance/a/g;

    .line 9
    new-instance v3, Lccsanenhance/a/g;

    const-string v5, "ACTIVITY_STOPPED"

    const-string v7, "launch_activity_stopped"

    const/4 v8, 0x4

    invoke-direct {v3, v5, v6, v7, v8}, Lccsanenhance/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lccsanenhance/a/g;->c:Lccsanenhance/a/g;

    .line 13
    new-instance v5, Lccsanenhance/a/g;

    const-string v7, "USER_PRESENT"

    const/4 v9, 0x3

    const-string v10, "launch_user_present"

    const/16 v11, 0x8

    invoke-direct {v5, v7, v9, v10, v11}, Lccsanenhance/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lccsanenhance/a/g;->d:Lccsanenhance/a/g;

    .line 14
    new-array v7, v8, [Lccsanenhance/a/g;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    sput-object v7, Lccsanenhance/a/g;->e:[Lccsanenhance/a/g;

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
    iput-object p3, p0, Lccsanenhance/a/g;->f:Ljava/lang/String;

    .line 3
    iput p4, p0, Lccsanenhance/a/g;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanenhance/a/g;
    .locals 1

    .line 1
    const-class v0, Lccsanenhance/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsanenhance/a/g;

    return-object p0
.end method

.method public static values()[Lccsanenhance/a/g;
    .locals 1

    .line 1
    sget-object v0, Lccsanenhance/a/g;->e:[Lccsanenhance/a/g;

    invoke-virtual {v0}, [Lccsanenhance/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanenhance/a/g;

    return-object v0
.end method
