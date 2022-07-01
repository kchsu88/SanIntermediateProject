.class public abstract Lccsancom/san/convert/database/TaskDatabase;
.super Lccsanandroidx/room/RoomDatabase;
.source ""


# static fields
.field private static unifiedDownload:Lccsancom/san/convert/database/TaskDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-class v1, Lccsancom/san/convert/database/TaskDatabase;

    const-string v2, "db_converts"

    invoke-static {v0, v1, v2}, Lccsanandroidx/room/Room;->databaseBuilder(Lccsanandroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lccsanandroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase$Builder;->build()Lccsanandroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lccsancom/san/convert/database/TaskDatabase;

    sput-object v0, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload:Lccsancom/san/convert/database/TaskDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload:Lccsancom/san/convert/database/TaskDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;
.end method
