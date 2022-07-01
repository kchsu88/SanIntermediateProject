.class Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent$1;
.super Ljava/lang/Object;
.source "GlobalComponent.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent$1;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 113
    return-void
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V
    .locals 0

    .line 58
    return-void
.end method

.method public findAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;",
            ">;"
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public findByDownloadUrl(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V
    .locals 0

    .line 63
    return-void
.end method

.method public getUnwantedModels(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;",
            ">;"
        }
    .end annotation

    .line 92
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V
    .locals 0

    .line 68
    return-void
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;
    .locals 0

    .line 102
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 88
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    return-void
.end method

.method public update(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;)V
    .locals 0

    .line 73
    return-void
.end method

.method public updateProgress(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V
    .locals 0

    .line 78
    return-void
.end method

.method public updateUnzipResource(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 98
    return-void
.end method
