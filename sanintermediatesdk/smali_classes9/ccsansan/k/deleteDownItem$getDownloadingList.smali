.class public final enum Lccsansan/k/deleteDownItem$getDownloadingList;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/k/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "getDownloadingList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/k/deleteDownItem$getDownloadingList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/k/deleteDownItem$getDownloadingList;

.field public static final enum OTHER:Lccsansan/k/deleteDownItem$getDownloadingList;

.field public static final enum XZ_CENTER:Lccsansan/k/deleteDownItem$getDownloadingList;

.field public static final enum XZ_GP:Lccsansan/k/deleteDownItem$getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lccsansan/k/deleteDownItem$getDownloadingList;

    const-string v1, "XZ_CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsansan/k/deleteDownItem$getDownloadingList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsansan/k/deleteDownItem$getDownloadingList;->XZ_CENTER:Lccsansan/k/deleteDownItem$getDownloadingList;

    new-instance v1, Lccsansan/k/deleteDownItem$getDownloadingList;

    const-string v3, "XZ_GP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsansan/k/deleteDownItem$getDownloadingList;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsansan/k/deleteDownItem$getDownloadingList;->XZ_GP:Lccsansan/k/deleteDownItem$getDownloadingList;

    new-instance v3, Lccsansan/k/deleteDownItem$getDownloadingList;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsansan/k/deleteDownItem$getDownloadingList;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsansan/k/deleteDownItem$getDownloadingList;->OTHER:Lccsansan/k/deleteDownItem$getDownloadingList;

    const/4 v5, 0x3

    new-array v5, v5, [Lccsansan/k/deleteDownItem$getDownloadingList;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsansan/k/deleteDownItem$getDownloadingList;->$VALUES:[Lccsansan/k/deleteDownItem$getDownloadingList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/k/deleteDownItem$getDownloadingList;
    .locals 1

    .line 1
    const-class v0, Lccsansan/k/deleteDownItem$getDownloadingList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/k/deleteDownItem$getDownloadingList;

    return-object p0
.end method

.method public static values()[Lccsansan/k/deleteDownItem$getDownloadingList;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/k/deleteDownItem$getDownloadingList;->$VALUES:[Lccsansan/k/deleteDownItem$getDownloadingList;

    invoke-virtual {v0}, [Lccsansan/k/deleteDownItem$getDownloadingList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/k/deleteDownItem$getDownloadingList;

    return-object v0
.end method
