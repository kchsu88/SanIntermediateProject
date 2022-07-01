.class Lccsanandroidx/print/PrintHelper$PrintUriAdapter;
.super Lccsanandroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintUriAdapter"
.end annotation


# instance fields
.field mAttributes:Lccsanandroid/print/PrintAttributes;

.field mBitmap:Lccsanandroid/graphics/Bitmap;

.field final mCallback:Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;

.field final mFittingMode:I

.field final mImageFile:Lccsanandroid/net/Uri;

.field final mJobName:Ljava/lang/String;

.field mLoadBitmap:Lccsanandroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/AsyncTask<",
            "Lccsanandroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsanandroidx/print/PrintHelper;


# direct methods
.method constructor <init>(Lccsanandroidx/print/PrintHelper;Ljava/lang/String;Lccsanandroid/net/Uri;Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;I)V
    .locals 0
    .param p2, "jobName"    # Ljava/lang/String;
    .param p3, "imageFile"    # Lccsanandroid/net/Uri;
    .param p4, "callback"    # Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;
    .param p5, "fittingMode"    # I

    .line 389
    iput-object p1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    invoke-direct {p0}, Lccsanandroid/print/PrintDocumentAdapter;-><init>()V

    .line 390
    iput-object p2, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    .line 391
    iput-object p3, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mImageFile:Lccsanandroid/net/Uri;

    .line 392
    iput-object p4, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 393
    iput p5, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    .line 394
    const/4 p1, 0x0

    iput-object p1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Lccsanandroid/graphics/Bitmap;

    .line 395
    return-void
.end method


# virtual methods
.method cancelLoad()V
    .locals 3

    .line 502
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    iget-object v0, v0, Lccsanandroidx/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    iget-object v1, v1, Lccsanandroidx/print/PrintHelper;->mDecodeOptions:Lccsanandroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_1

    .line 504
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 506
    iget-object v1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    iget-object v1, v1, Lccsanandroidx/print/PrintHelper;->mDecodeOptions:Lccsanandroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Lccsanandroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 508
    :cond_0
    iget-object v1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    const/4 v2, 0x0

    iput-object v2, v1, Lccsanandroidx/print/PrintHelper;->mDecodeOptions:Lccsanandroid/graphics/BitmapFactory$Options;

    .line 510
    :cond_1
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFinish()V
    .locals 2

    .line 515
    invoke-super {p0}, Lccsanandroid/print/PrintDocumentAdapter;->onFinish()V

    .line 516
    invoke-virtual {p0}, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->cancelLoad()V

    .line 517
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Lccsanandroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 518
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/os/AsyncTask;->cancel(Z)Z

    .line 520
    :cond_0
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mCallback:Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_1

    .line 521
    invoke-interface {v0}, Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 523
    :cond_1
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Lccsanandroid/graphics/Bitmap;

    .line 527
    :cond_2
    return-void
.end method

.method public onLayout(Lccsanandroid/print/PrintAttributes;Lccsanandroid/print/PrintAttributes;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;Lccsanandroid/os/Bundle;)V
    .locals 8
    .param p1, "oldPrintAttributes"    # Lccsanandroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Lccsanandroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Lccsanandroid/os/Bundle;

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iput-object p2, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Lccsanandroid/print/PrintAttributes;

    .line 406
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-virtual {p3}, Lccsanandroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p4}, Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 411
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 415
    new-instance v0, Lccsanandroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanandroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 416
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/print/PrintDocumentInfo$Builder;->setContentType(I)Lccsanandroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v1}, Lccsanandroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Lccsanandroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lccsanandroid/print/PrintDocumentInfo$Builder;->build()Lccsanandroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 419
    .local v0, "info":Lccsanandroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Lccsanandroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 420
    .local v1, "changed":Z
    invoke-virtual {p4, v0, v1}, Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Lccsanandroid/print/PrintDocumentInfo;Z)V

    .line 421
    return-void

    .line 424
    .end local v0    # "info":Lccsanandroid/print/PrintDocumentInfo;
    .end local v1    # "changed":Z
    :cond_1
    new-instance v0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;-><init>(Lccsanandroidx/print/PrintHelper$PrintUriAdapter;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintAttributes;Lccsanandroid/print/PrintAttributes;Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lccsanandroid/net/Uri;

    .line 497
    invoke-virtual {v0, v1}, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->execute([Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Lccsanandroid/os/AsyncTask;

    .line 498
    return-void

    .line 406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onWrite([Lccsanandroid/print/PageRange;Lccsanandroid/os/ParcelFileDescriptor;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 7
    .param p1, "pageRanges"    # [Lccsanandroid/print/PageRange;
    .param p2, "fileDescriptor"    # Lccsanandroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 533
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    iget-object v1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Lccsanandroid/print/PrintAttributes;

    iget v2, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mFittingMode:I

    iget-object v3, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Lccsanandroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lccsanandroidx/print/PrintHelper;->writeBitmap(Lccsanandroid/print/PrintAttributes;ILccsanandroid/graphics/Bitmap;Lccsanandroid/os/ParcelFileDescriptor;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 535
    return-void
.end method
