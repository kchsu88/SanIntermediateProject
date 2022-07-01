.class Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
.super Ljava/lang/Object;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/request/target/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeDeterminer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    }
.end annotation


# static fields
.field private static final PENDING_SIZE:I


# instance fields
.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/bumptech/glide/request/target/SizeReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private displayDimens:Lccsanandroid/graphics/Point;

.field private layoutListener:Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

.field private final view:Lccsanandroid/view/View;


# direct methods
.method public constructor <init>(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    .line 172
    iput-object p1, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 161
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->checkCurrentDimens()V

    return-void
.end method

.method private checkCurrentDimens()V
    .locals 4

    .line 183
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewWidthOrParam()I

    move-result v0

    .line 188
    .local v0, "currentWidth":I
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewHeightOrParam()I

    move-result v1

    .line 189
    .local v1, "currentHeight":I
    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0, v0, v1}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->notifyCbs(II)V

    .line 200
    iget-object v2, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v2

    .line 201
    .local v2, "observer":Lccsanandroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    iget-object v3, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v2, v3}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 204
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 205
    return-void

    .line 190
    .end local v2    # "observer":Lccsanandroid/view/ViewTreeObserver;
    :cond_3
    :goto_0
    return-void
.end method

.method private getDisplayDimens()Lccsanandroid/graphics/Point;
    .locals 5

    .line 260
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Lccsanandroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 261
    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowManager;

    .line 264
    .local v0, "windowManager":Lccsanandroid/view/WindowManager;
    invoke-interface {v0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v1

    .line 265
    .local v1, "display":Lccsanandroid/view/Display;
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_1

    .line 266
    new-instance v2, Lccsanandroid/graphics/Point;

    invoke-direct {v2}, Lccsanandroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Lccsanandroid/graphics/Point;

    .line 267
    invoke-virtual {v1, v2}, Lccsanandroid/view/Display;->getSize(Lccsanandroid/graphics/Point;)V

    goto :goto_0

    .line 269
    :cond_1
    new-instance v2, Lccsanandroid/graphics/Point;

    invoke-virtual {v1}, Lccsanandroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lccsanandroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lccsanandroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Lccsanandroid/graphics/Point;

    .line 271
    :goto_0
    iget-object v2, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Lccsanandroid/graphics/Point;

    return-object v2
.end method

.method private getSizeForParam(IZ)I
    .locals 2
    .param p1, "param"    # I
    .param p2, "isHeight"    # Z

    .line 249
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 250
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getDisplayDimens()Lccsanandroid/graphics/Point;

    move-result-object v0

    .line 251
    .local v0, "displayDimens":Lccsanandroid/graphics/Point;
    if-eqz p2, :cond_0

    iget v1, v0, Lccsanandroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lccsanandroid/graphics/Point;->x:I

    :goto_0
    return v1

    .line 253
    .end local v0    # "displayDimens":Lccsanandroid/graphics/Point;
    :cond_1
    return p1
.end method

.method private getViewHeightOrParam()I
    .locals 3

    .line 227
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 228
    .local v0, "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    return v1

    .line 230
    :cond_0
    if-eqz v0, :cond_1

    .line 231
    iget v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSizeForParam(IZ)I

    move-result v1

    return v1

    .line 233
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getViewWidthOrParam()I
    .locals 3

    .line 238
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 239
    .local v0, "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getWidth()I

    move-result v1

    return v1

    .line 241
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 242
    iget v2, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, v2, v1}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSizeForParam(IZ)I

    move-result v1

    return v1

    .line 244
    :cond_1
    return v1
.end method

.method private isSizeValid(I)Z
    .locals 1
    .param p1, "size"    # I

    .line 275
    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private notifyCbs(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 176
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/request/target/SizeReadyCallback;

    .line 177
    .local v1, "cb":Lccsancom/bumptech/glide/request/target/SizeReadyCallback;
    invoke-interface {v1, p1, p2}, Lccsancom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 178
    .end local v1    # "cb":Lccsancom/bumptech/glide/request/target/SizeReadyCallback;
    goto :goto_0

    .line 179
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    return-void
.end method


# virtual methods
.method public getSize(Lccsancom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 4
    .param p1, "cb"    # Lccsancom/bumptech/glide/request/target/SizeReadyCallback;

    .line 208
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewWidthOrParam()I

    move-result v0

    .line 209
    .local v0, "currentWidth":I
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewHeightOrParam()I

    move-result v1

    .line 210
    .local v1, "currentHeight":I
    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-interface {p1, v0, v1}, Lccsancom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v2, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    iget-object v2, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    iget-object v2, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    if-nez v2, :cond_2

    .line 219
    iget-object v2, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v2

    .line 220
    .local v2, "observer":Lccsanandroid/view/ViewTreeObserver;
    new-instance v3, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-direct {v3, p0}, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;-><init>(Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V

    iput-object v3, p0, Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lccsancom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 221
    invoke-virtual {v2, v3}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 224
    .end local v2    # "observer":Lccsanandroid/view/ViewTreeObserver;
    :cond_2
    :goto_0
    return-void
.end method
