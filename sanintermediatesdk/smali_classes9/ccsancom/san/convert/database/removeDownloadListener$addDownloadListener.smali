.class Lccsancom/san/convert/database/removeDownloadListener$addDownloadListener;
.super Lccsanandroidx/room/SharedSQLiteStatement;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/convert/database/removeDownloadListener;-><init>(Lccsanandroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lccsanandroidx/room/SharedSQLiteStatement;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM tb_convert"

    return-object v0
.end method
