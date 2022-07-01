.class Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;
.super Lccsanandroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->onLayout(Lccsanandroid/print/PrintAttributes;Lccsanandroid/print/PrintAttributes;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Lccsanandroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

.field final synthetic val$cancellationSignal:Lccsanandroid/os/CancellationSignal;

.field final synthetic val$layoutResultCallback:Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Lccsanandroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Lccsanandroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Lccsanandroidx/print/PrintHelper$PrintUriAdapter;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintAttributes;Lccsanandroid/print/PrintAttributes;Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    .line 424
    iput-object p1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    iput-object p2, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Lccsanandroid/os/CancellationSignal;

    iput-object p3, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Lccsanandroid/print/PrintAttributes;

    iput-object p4, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Lccsanandroid/print/PrintAttributes;

    iput-object p5, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lccsanandroid/net/Uri;)Lccsanandroid/graphics/Bitmap;
    .locals 2
    .param p1, "uris"    # [Lccsanandroid/net/Uri;

    .line 441
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    iget-object v1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v1, v1, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mImageFile:Lccsanandroid/net/Uri;

    invoke-virtual {v0, v1}, Lccsanandroidx/print/PrintHelper;->loadConstrainedBitmap(Lccsanandroid/net/Uri;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 424
    check-cast p1, [Lccsanandroid/net/Uri;

    invoke-virtual {p0, p1}, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->doInBackground([Lccsanandroid/net/Uri;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Lccsanandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Lccsanandroid/graphics/Bitmap;

    .line 494
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 495
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Lccsanandroid/os/AsyncTask;

    .line 496
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 424
    check-cast p1, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->onCancelled(Lccsanandroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Lccsanandroid/graphics/Bitmap;)V
    .locals 9

    .line 450
    invoke-super {p0, p1}, Lccsanandroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 454
    if-eqz p1, :cond_1

    sget-boolean v0, Lccsanandroidx/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    iget v0, v0, Lccsanandroidx/print/PrintHelper;->mOrientation:I

    if-nez v0, :cond_1

    .line 458
    :cond_0
    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mAttributes:Lccsanandroid/print/PrintAttributes;

    invoke-virtual {v0}, Lccsanandroid/print/PrintAttributes;->getMediaSize()Lccsanandroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    .line 460
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {v0}, Lccsanandroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    invoke-static {p1}, Lccsanandroidx/print/PrintHelper;->isPortrait(Lccsanandroid/graphics/Bitmap;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 464
    new-instance v7, Lccsanandroid/graphics/Matrix;

    invoke-direct {v7}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 466
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v7, v0}, Lccsanandroid/graphics/Matrix;->postRotate(F)Z

    .line 467
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 468
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 467
    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lccsanandroid/graphics/Bitmap;->createBitmap(Lccsanandroid/graphics/Bitmap;IIIILccsanandroid/graphics/Matrix;Z)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 460
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 474
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    iput-object p1, v0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mBitmap:Lccsanandroid/graphics/Bitmap;

    .line 475
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 476
    new-instance p1, Lccsanandroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    iget-object v1, v1, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {p1, v1}, Lccsanandroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 477
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lccsanandroid/print/PrintDocumentInfo$Builder;->setContentType(I)Lccsanandroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    .line 478
    invoke-virtual {p1, v1}, Lccsanandroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Lccsanandroid/print/PrintDocumentInfo$Builder;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Lccsanandroid/print/PrintDocumentInfo$Builder;->build()Lccsanandroid/print/PrintDocumentInfo;

    move-result-object p1

    .line 481
    iget-object v2, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Lccsanandroid/print/PrintAttributes;

    iget-object v3, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Lccsanandroid/print/PrintAttributes;

    invoke-virtual {v2, v3}, Lccsanandroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 483
    xor-int/2addr v1, v2

    iget-object v2, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v2, p1, v1}, Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Lccsanandroid/print/PrintDocumentInfo;Z)V

    .line 485
    goto :goto_1

    .line 486
    :cond_2
    iget-object p1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {p1, v0}, Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    .line 488
    :goto_1
    iget-object p1, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Lccsanandroidx/print/PrintHelper$PrintUriAdapter;

    iput-object v0, p1, Lccsanandroidx/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Lccsanandroid/os/AsyncTask;

    .line 489
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 424
    check-cast p1, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->onPostExecute(Lccsanandroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 428
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Lccsanandroid/os/CancellationSignal;

    new-instance v1, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1$1;

    invoke-direct {v1, p0}, Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1$1;-><init>(Lccsanandroidx/print/PrintHelper$PrintUriAdapter$1;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/CancellationSignal;->setOnCancelListener(Lccsanandroid/os/CancellationSignal$OnCancelListener;)V

    .line 436
    return-void
.end method
