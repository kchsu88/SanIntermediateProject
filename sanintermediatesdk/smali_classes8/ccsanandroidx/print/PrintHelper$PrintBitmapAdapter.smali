.class Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;
.super Lccsanandroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintBitmapAdapter"
.end annotation


# instance fields
.field private mAttributes:Lccsanandroid/print/PrintAttributes;

.field private final mBitmap:Lccsanandroid/graphics/Bitmap;

.field private final mCallback:Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;

.field private final mFittingMode:I

.field private final mJobName:Ljava/lang/String;

.field final synthetic this$0:Lccsanandroidx/print/PrintHelper;


# direct methods
.method constructor <init>(Lccsanandroidx/print/PrintHelper;Ljava/lang/String;ILccsanandroid/graphics/Bitmap;Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 0
    .param p2, "jobName"    # Ljava/lang/String;
    .param p3, "fittingMode"    # I
    .param p4, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .param p5, "callback"    # Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 288
    iput-object p1, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    invoke-direct {p0}, Lccsanandroid/print/PrintDocumentAdapter;-><init>()V

    .line 289
    iput-object p2, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mJobName:Ljava/lang/String;

    .line 290
    iput p3, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mFittingMode:I

    .line 291
    iput-object p4, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mBitmap:Lccsanandroid/graphics/Bitmap;

    .line 292
    iput-object p5, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mCallback:Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;

    .line 293
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 323
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mCallback:Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0}, Lccsanandroidx/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 326
    :cond_0
    return-void
.end method

.method public onLayout(Lccsanandroid/print/PrintAttributes;Lccsanandroid/print/PrintAttributes;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "oldPrintAttributes"    # Lccsanandroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Lccsanandroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Lccsanandroid/os/Bundle;

    .line 302
    iput-object p2, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mAttributes:Lccsanandroid/print/PrintAttributes;

    .line 304
    new-instance v0, Lccsanandroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanandroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 305
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/print/PrintDocumentInfo$Builder;->setContentType(I)Lccsanandroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Lccsanandroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Lccsanandroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lccsanandroid/print/PrintDocumentInfo$Builder;->build()Lccsanandroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 308
    .local v0, "info":Lccsanandroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Lccsanandroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 309
    .local v1, "changed":Z
    invoke-virtual {p4, v0, v1}, Lccsanandroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Lccsanandroid/print/PrintDocumentInfo;Z)V

    .line 310
    return-void
.end method

.method public onWrite([Lccsanandroid/print/PageRange;Lccsanandroid/os/ParcelFileDescriptor;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 7
    .param p1, "pageRanges"    # [Lccsanandroid/print/PageRange;
    .param p2, "fileDescriptor"    # Lccsanandroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 317
    iget-object v0, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->this$0:Lccsanandroidx/print/PrintHelper;

    iget-object v1, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mAttributes:Lccsanandroid/print/PrintAttributes;

    iget v2, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mFittingMode:I

    iget-object v3, p0, Lccsanandroidx/print/PrintHelper$PrintBitmapAdapter;->mBitmap:Lccsanandroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lccsanandroidx/print/PrintHelper;->writeBitmap(Lccsanandroid/print/PrintAttributes;ILccsanandroid/graphics/Bitmap;Lccsanandroid/os/ParcelFileDescriptor;Lccsanandroid/os/CancellationSignal;Lccsanandroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 319
    return-void
.end method
