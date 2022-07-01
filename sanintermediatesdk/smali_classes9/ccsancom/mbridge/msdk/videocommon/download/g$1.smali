.class final Lccsancom/mbridge/msdk/videocommon/download/g$1;
.super Ljava/lang/Object;
.source "H5DownLoadManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/videocommon/download/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/videocommon/download/g$d;

.field final synthetic c:Lccsancom/mbridge/msdk/videocommon/download/g;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/g;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$d;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$1;->c:Lccsancom/mbridge/msdk/videocommon/download/g;

    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/g$1;->b:Lccsancom/mbridge/msdk/videocommon/download/g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadComplete(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 3

    .line 128
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/j;->a()Lccsancom/mbridge/msdk/videocommon/download/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->unZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$1;->b:Lccsancom/mbridge/msdk/videocommon/download/g$d;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_1
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$1;->b:Lccsancom/mbridge/msdk/videocommon/download/g$d;

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_2
    :goto_0
    return-void
.end method

.method public final onDownloadError(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V
    .locals 2

    .line 143
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/j;->a()Lccsancom/mbridge/msdk/videocommon/download/j;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/g$1;->b:Lccsancom/mbridge/msdk/videocommon/download/g$d;

    if-eqz p2, :cond_1

    .line 145
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$1;->b:Lccsancom/mbridge/msdk/videocommon/download/g$d;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    :goto_0
    return-void
.end method

.method public final onDownloadStart(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 0

    .line 123
    return-void
.end method
