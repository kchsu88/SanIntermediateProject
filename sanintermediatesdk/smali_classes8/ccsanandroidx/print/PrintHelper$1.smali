.class Lccsanandroidx/print/PrintHelper$1;
.super Lccsanandroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/print/PrintHelper;->writeBitmap(Lccsanandroid/print/PrintAttributes;ILccsanandroid/graphics/Bitmap;Lccsanandroid/os/ParcelFileDescriptor;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/print/PrintHelper;

.field final synthetic val$attributes:Lccsanandroid/print/PrintAttributes;

.field final synthetic val$bitmap:Lccsanandroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Lccsanandroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Lccsanandroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Lccsanandroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Lccsanandroidx/print/PrintHelper;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintAttributes;Lccsanandroid/graphics/Bitmap;Lccsanandroid/print/PrintAttributes;ILccsanandroid/os/ParcelFileDescriptor;Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/print/PrintHelper;

    .line 635
    iput-object p1, p0, Lccsanandroidx/print/PrintHelper$1;->this$0:Lccsanandroidx/print/PrintHelper;

    iput-object p2, p0, Lccsanandroidx/print/PrintHelper$1;->val$cancellationSignal:Lccsanandroid/os/CancellationSignal;

    iput-object p3, p0, Lccsanandroidx/print/PrintHelper$1;->val$pdfAttributes:Lccsanandroid/print/PrintAttributes;

    iput-object p4, p0, Lccsanandroidx/print/PrintHelper$1;->val$bitmap:Lccsanandroid/graphics/Bitmap;

    iput-object p5, p0, Lccsanandroidx/print/PrintHelper$1;->val$attributes:Lccsanandroid/print/PrintAttributes;

    iput p6, p0, Lccsanandroidx/print/PrintHelper$1;->val$fittingMode:I

    iput-object p7, p0, Lccsanandroidx/print/PrintHelper$1;->val$fileDescriptor:Lccsanandroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Lccsanandroidx/print/PrintHelper$1;->val$writeResultCallback:Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 635
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lccsanandroidx/print/PrintHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .line 639
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$1;->val$cancellationSignal:Lccsanandroid/os/CancellationSignal;

    invoke-virtual {v0}, Lccsanandroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 640
    return-object v1

    .line 643
    :cond_0
    new-instance v0, Lccsanandroid/print/pdf/PrintedPdfDocument;

    iget-object v2, p0, Lccsanandroidx/print/PrintHelper$1;->this$0:Lccsanandroidx/print/PrintHelper;

    iget-object v2, v2, Lccsanandroidx/print/PrintHelper;->mContext:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsanandroidx/print/PrintHelper$1;->val$pdfAttributes:Lccsanandroid/print/PrintAttributes;

    invoke-direct {v0, v2, v3}, Lccsanandroid/print/pdf/PrintedPdfDocument;-><init>(Lccsanandroid/content/Context;Lccsanandroid/print/PrintAttributes;)V

    .line 646
    .local v0, "pdfDocument":Lccsanandroid/print/pdf/PrintedPdfDocument;
    iget-object v2, p0, Lccsanandroidx/print/PrintHelper$1;->val$bitmap:Lccsanandroid/graphics/Bitmap;

    iget-object v3, p0, Lccsanandroidx/print/PrintHelper$1;->val$pdfAttributes:Lccsanandroid/print/PrintAttributes;

    .line 647
    invoke-virtual {v3}, Lccsanandroid/print/PrintAttributes;->getColorMode()I

    move-result v3

    .line 646
    invoke-static {v2, v3}, Lccsanandroidx/print/PrintHelper;->convertBitmapForColorMode(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    .line 649
    .local v2, "maybeGrayscale":Lccsanandroid/graphics/Bitmap;
    iget-object v3, p0, Lccsanandroidx/print/PrintHelper$1;->val$cancellationSignal:Lccsanandroid/os/CancellationSignal;

    invoke-virtual {v3}, Lccsanandroid/os/CancellationSignal;->isCanceled()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 650
    return-object v1

    .line 654
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v3}, Lccsanandroid/print/pdf/PrintedPdfDocument;->startPage(I)Lccsanandroid/graphics/pdf/PdfDocument$Page;

    move-result-object v4

    .line 657
    .local v4, "page":Lccsanandroid/graphics/pdf/PdfDocument$Page;
    sget-boolean v5, Lccsanandroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v5, :cond_2

    .line 658
    new-instance v3, Lccsanandroid/graphics/RectF;

    invoke-virtual {v4}, Lccsanandroid/graphics/pdf/PdfDocument$Page;->getInfo()Lccsanandroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Lccsanandroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/Rect;)V

    .local v3, "contentRect":Lccsanandroid/graphics/RectF;
    goto :goto_0

    .line 662
    .end local v3    # "contentRect":Lccsanandroid/graphics/RectF;
    :cond_2
    new-instance v5, Lccsanandroid/print/pdf/PrintedPdfDocument;

    iget-object v6, p0, Lccsanandroidx/print/PrintHelper$1;->this$0:Lccsanandroidx/print/PrintHelper;

    iget-object v6, v6, Lccsanandroidx/print/PrintHelper;->mContext:Lccsanandroid/content/Context;

    iget-object v7, p0, Lccsanandroidx/print/PrintHelper$1;->val$attributes:Lccsanandroid/print/PrintAttributes;

    invoke-direct {v5, v6, v7}, Lccsanandroid/print/pdf/PrintedPdfDocument;-><init>(Lccsanandroid/content/Context;Lccsanandroid/print/PrintAttributes;)V

    .line 664
    .local v5, "dummyDocument":Lccsanandroid/print/pdf/PrintedPdfDocument;
    invoke-virtual {v5, v3}, Lccsanandroid/print/pdf/PrintedPdfDocument;->startPage(I)Lccsanandroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 665
    .local v3, "dummyPage":Lccsanandroid/graphics/pdf/PdfDocument$Page;
    new-instance v6, Lccsanandroid/graphics/RectF;

    invoke-virtual {v3}, Lccsanandroid/graphics/pdf/PdfDocument$Page;->getInfo()Lccsanandroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v7

    invoke-virtual {v7}, Lccsanandroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Lccsanandroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/Rect;)V

    .line 666
    .local v6, "contentRect":Lccsanandroid/graphics/RectF;
    invoke-virtual {v5, v3}, Lccsanandroid/print/pdf/PrintedPdfDocument;->finishPage(Lccsanandroid/graphics/pdf/PdfDocument$Page;)V

    .line 667
    invoke-virtual {v5}, Lccsanandroid/print/pdf/PrintedPdfDocument;->close()V

    move-object v3, v6

    .line 671
    .end local v5    # "dummyDocument":Lccsanandroid/print/pdf/PrintedPdfDocument;
    .end local v6    # "contentRect":Lccsanandroid/graphics/RectF;
    .local v3, "contentRect":Lccsanandroid/graphics/RectF;
    :goto_0
    nop

    .line 672
    invoke-virtual {v2}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Lccsanandroidx/print/PrintHelper$1;->val$fittingMode:I

    .line 671
    invoke-static {v5, v6, v3, v7}, Lccsanandroidx/print/PrintHelper;->getMatrix(IILccsanandroid/graphics/RectF;I)Lccsanandroid/graphics/Matrix;

    move-result-object v5

    .line 675
    .local v5, "matrix":Lccsanandroid/graphics/Matrix;
    sget-boolean v6, Lccsanandroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v6, :cond_3

    goto :goto_1

    .line 679
    :cond_3
    iget v6, v3, Lccsanandroid/graphics/RectF;->left:F

    iget v7, v3, Lccsanandroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Lccsanandroid/graphics/Matrix;->postTranslate(FF)Z

    .line 682
    invoke-virtual {v4}, Lccsanandroid/graphics/pdf/PdfDocument$Page;->getCanvas()Lccsanandroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v3}, Lccsanandroid/graphics/Canvas;->clipRect(Lccsanandroid/graphics/RectF;)Z

    .line 686
    :goto_1
    invoke-virtual {v4}, Lccsanandroid/graphics/pdf/PdfDocument$Page;->getCanvas()Lccsanandroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v2, v5, v1}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Paint;)V

    .line 689
    invoke-virtual {v0, v4}, Lccsanandroid/print/pdf/PrintedPdfDocument;->finishPage(Lccsanandroid/graphics/pdf/PdfDocument$Page;)V

    .line 691
    iget-object v6, p0, Lccsanandroidx/print/PrintHelper$1;->val$cancellationSignal:Lccsanandroid/os/CancellationSignal;

    invoke-virtual {v6}, Lccsanandroid/os/CancellationSignal;->isCanceled()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_6

    .line 692
    nop

    .line 700
    :try_start_2
    invoke-virtual {v0}, Lccsanandroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v6, p0, Lccsanandroidx/print/PrintHelper$1;->val$fileDescriptor:Lccsanandroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_4

    .line 704
    :try_start_3
    invoke-virtual {v6}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 707
    goto :goto_2

    .line 705
    :catch_0
    move-exception v6

    .line 710
    :cond_4
    :goto_2
    :try_start_4
    iget-object v6, p0, Lccsanandroidx/print/PrintHelper$1;->val$bitmap:Lccsanandroid/graphics/Bitmap;

    if-eq v2, v6, :cond_5

    .line 711
    invoke-virtual {v2}, Lccsanandroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    return-object v1

    .line 696
    :cond_6
    :try_start_5
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lccsanandroidx/print/PrintHelper$1;->val$fileDescriptor:Lccsanandroid/os/ParcelFileDescriptor;

    .line 697
    invoke-virtual {v7}, Lccsanandroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 696
    invoke-virtual {v0, v6}, Lccsanandroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 698
    nop

    .line 700
    :try_start_6
    invoke-virtual {v0}, Lccsanandroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v6, p0, Lccsanandroidx/print/PrintHelper$1;->val$fileDescriptor:Lccsanandroid/os/ParcelFileDescriptor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v6, :cond_7

    .line 704
    :try_start_7
    invoke-virtual {v6}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 707
    goto :goto_3

    .line 705
    :catch_1
    move-exception v6

    .line 710
    :cond_7
    :goto_3
    :try_start_8
    iget-object v6, p0, Lccsanandroidx/print/PrintHelper$1;->val$bitmap:Lccsanandroid/graphics/Bitmap;

    if-eq v2, v6, :cond_8

    .line 711
    invoke-virtual {v2}, Lccsanandroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-object v1

    .line 700
    .end local v3    # "contentRect":Lccsanandroid/graphics/RectF;
    .end local v4    # "page":Lccsanandroid/graphics/pdf/PdfDocument$Page;
    .end local v5    # "matrix":Lccsanandroid/graphics/Matrix;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/print/pdf/PrintedPdfDocument;->close()V

    .line 702
    iget-object v3, p0, Lccsanandroidx/print/PrintHelper$1;->val$fileDescriptor:Lccsanandroid/os/ParcelFileDescriptor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_9

    .line 704
    :try_start_9
    invoke-virtual {v3}, Lccsanandroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 707
    goto :goto_4

    .line 705
    :catch_2
    move-exception v3

    .line 710
    :cond_9
    :goto_4
    :try_start_a
    iget-object v3, p0, Lccsanandroidx/print/PrintHelper$1;->val$bitmap:Lccsanandroid/graphics/Bitmap;

    if-eq v2, v3, :cond_a

    .line 711
    invoke-virtual {v2}, Lccsanandroid/graphics/Bitmap;->recycle()V

    :cond_a
    nop

    .end local p1    # "params":[Ljava/lang/Void;
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 714
    .end local v0    # "pdfDocument":Lccsanandroid/print/pdf/PrintedPdfDocument;
    .end local v2    # "maybeGrayscale":Lccsanandroid/graphics/Bitmap;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catchall_1
    move-exception v0

    .line 715
    .local v0, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 635
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lccsanandroidx/print/PrintHelper$1;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 721
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$1;->val$cancellationSignal:Lccsanandroid/os/CancellationSignal;

    invoke-virtual {v0}, Lccsanandroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$1;->val$writeResultCallback:Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0}, Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    goto :goto_0

    .line 724
    :cond_0
    if-nez p1, :cond_1

    .line 726
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$1;->val$writeResultCallback:Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Lccsanandroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Lccsanandroid/print/PageRange;->ALL_PAGES:Lccsanandroid/print/PageRange;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Lccsanandroid/print/PageRange;)V

    goto :goto_0

    .line 730
    :cond_1
    const-string v0, "PrintHelper"

    const-string v1, "Error writing printed content"

    invoke-static {v0, v1, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$1;->val$writeResultCallback:Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 733
    :goto_0
    return-void
.end method
