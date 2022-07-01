.class final Lccsansan/au/addDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->getDownloadStatusByUrl(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/san/cpi/xz/AdXzParams;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    .line 2
    iget-object p1, p1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1, v2}, Lccsansan/ab/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v1, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v3, v2, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v2, v2, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v6, -0x2

    const/4 v7, 0x2

    const-string v9, "-1"

    const/4 v10, 0x1

    const-string v11, "s2s_track_status"

    if-eqz v2, :cond_6

    .line 7
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v12, v2, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v2, v2, Lccsancom/san/cpi/xz/AdXzParams;->mSourceType:Ljava/lang/String;

    invoke-static {v12, v2}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v13, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v14, v2, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v15, v2, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v12, v2, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v5, v2, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    move-object/from16 v22, v9

    iget-wide v8, v2, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    iget-boolean v3, v2, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget-object v2, v2, Lccsancom/san/cpi/xz/AdXzParams;->mCallback:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    move-object/from16 v16, v12

    move-object/from16 v17, v5

    move-wide/from16 v18, v8

    move/from16 v20, v3

    move-object/from16 v21, v2

    invoke-static/range {v13 .. v21}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLccsancom/san/cpi/xz/AdXzCallback$XzCallback;)Z

    .line 10
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v3, v2, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    if-eqz v3, :cond_1

    .line 11
    iget-object v2, v2, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-interface {v3, v10, v2}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_e

    .line 14
    iget v2, v1, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eq v2, v7, :cond_e

    .line 15
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v2, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v2, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v2, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    :goto_0
    invoke-static {v2}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 17
    :goto_1
    iget v2, v1, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eq v2, v4, :cond_5

    const/4 v2, -0x3

    invoke-virtual {v1, v11, v2}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    if-nez v5, :cond_4

    move-object/from16 v2, v22

    goto :goto_2

    .line 23
    :cond_4
    const/4 v2, -0x3

    invoke-virtual {v1, v11, v2}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    if-nez v5, :cond_e

    .line 24
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v13, v2, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v14, v2, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v15, v2, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v3, v2, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v4, v2, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v5, v2, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v6, v2, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v12, 0x1

    const/16 v21, 0x0

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-wide/from16 v19, v6

    invoke-static/range {v12 .. v21}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 26
    move-object/from16 v2, v22

    invoke-virtual {v1, v11, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 28
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto/16 :goto_6

    .line 17
    :cond_5
    move-object/from16 v2, v22

    .line 29
    :goto_2
    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v13, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v14, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v15, v3, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v4, v3, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v5, v3, Lccsancom/san/cpi/xz/AdXzParams;->mXzUrl:Ljava/lang/String;

    iget-object v6, v3, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v7, v3, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v12, 0x1

    const/16 v21, 0x1

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-wide/from16 v19, v7

    invoke-static/range {v12 .. v21}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 31
    invoke-virtual {v1, v11, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 33
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto/16 :goto_6

    .line 43
    :cond_6
    move-object v2, v9

    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v3}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 44
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v4, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v5, v3, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    iget-object v3, v3, Lccsancom/san/cpi/xz/AdXzParams;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-static {v1, v2, v4, v5, v3}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Z

    .line 45
    iget-object v1, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    if-eqz v1, :cond_7

    .line 46
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v1, v3, v2}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    .line 49
    :cond_7
    iget-object v1, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v3, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v4, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v5, v1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v6, v1, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v7, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iget-object v8, v1, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v9, v1, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v2, 0x4

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    goto/16 :goto_6

    .line 51
    :cond_8
    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iget-object v5, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v5, v5, Lccsancom/san/cpi/xz/AdXzParams;->mSourceType:Ljava/lang/String;

    invoke-static {v3, v5}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v12, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v13, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v14, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iget-object v15, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v5, v3, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v8, v3, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    iget-boolean v4, v3, Lccsancom/san/cpi/xz/AdXzParams;->mAutoStart:Z

    iget-object v3, v3, Lccsancom/san/cpi/xz/AdXzParams;->mCallback:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    move-object/from16 v16, v5

    move-wide/from16 v17, v8

    move/from16 v19, v4

    move-object/from16 v20, v3

    invoke-static/range {v12 .. v20}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLccsancom/san/cpi/xz/AdXzCallback$XzCallback;)Z

    .line 53
    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v3, v3, Lccsancom/san/cpi/xz/AdXzParams;->mResultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    if-eqz v3, :cond_9

    .line 54
    iget-object v4, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v3, v10, v4}, Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;->onResult(ILjava/lang/String;)V

    :cond_9
    if-eqz v1, :cond_e

    .line 57
    iget v3, v1, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eq v3, v7, :cond_e

    .line 58
    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v3, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    goto :goto_3

    :cond_a
    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    :goto_3
    invoke-static {v3}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 60
    :goto_4
    iget v3, v1, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    const/4 v3, -0x3

    invoke-virtual {v1, v11, v3}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_c

    if-nez v5, :cond_c

    goto :goto_5

    .line 66
    :cond_c
    const/4 v3, -0x3

    invoke-virtual {v1, v11, v3}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    if-nez v5, :cond_e

    .line 67
    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v13, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v14, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v15, v3, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v4, v3, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v5, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iget-object v6, v3, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v7, v3, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v12, 0x1

    const/16 v21, 0x0

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-wide/from16 v19, v7

    invoke-static/range {v12 .. v21}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 69
    invoke-virtual {v1, v11, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 71
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    goto :goto_6

    .line 72
    :cond_d
    :goto_5
    iget-object v3, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v13, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    iget-object v14, v3, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    iget-object v15, v3, Lccsancom/san/cpi/xz/AdXzParams;->mVersionName:Ljava/lang/String;

    iget v4, v3, Lccsancom/san/cpi/xz/AdXzParams;->mVersionCode:I

    iget-object v5, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iget-object v6, v3, Lccsancom/san/cpi/xz/AdXzParams;->mName:Ljava/lang/String;

    iget-wide v7, v3, Lccsancom/san/cpi/xz/AdXzParams;->mFileSize:J

    const/4 v12, 0x1

    const/16 v21, 0x1

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-wide/from16 v19, v7

    invoke-static/range {v12 .. v21}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JI)V

    .line 74
    invoke-virtual {v1, v11, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 76
    iget-object v2, v0, Lccsansan/au/addDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    :cond_e
    :goto_6
    return-void
.end method
