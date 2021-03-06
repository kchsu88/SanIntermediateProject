.class Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;,
        Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;,
        Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# static fields
.field static final CVE_PVE_POS:I = 0xc

.field static final CVE_PVS_POS:I = 0x8

.field static final CVS_PVE_POS:I = 0x4

.field static final CVS_PVS_POS:I = 0x0

.field static final EQ:I = 0x2

.field static final FLAG_CVE_EQ_PVE:I = 0x2000

.field static final FLAG_CVE_EQ_PVS:I = 0x200

.field static final FLAG_CVE_GT_PVE:I = 0x1000

.field static final FLAG_CVE_GT_PVS:I = 0x100

.field static final FLAG_CVE_LT_PVE:I = 0x4000

.field static final FLAG_CVE_LT_PVS:I = 0x400

.field static final FLAG_CVS_EQ_PVE:I = 0x20

.field static final FLAG_CVS_EQ_PVS:I = 0x2

.field static final FLAG_CVS_GT_PVE:I = 0x10

.field static final FLAG_CVS_GT_PVS:I = 0x1

.field static final FLAG_CVS_LT_PVE:I = 0x40

.field static final FLAG_CVS_LT_PVS:I = 0x4

.field static final GT:I = 0x1

.field static final LT:I = 0x4

.field static final MASK:I = 0x7


# instance fields
.field mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

.field final mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;)V
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 133
    new-instance v0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-direct {v0}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;-><init>()V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 134
    return-void
.end method


# virtual methods
.method findOneViewWithinBoundFlags(IIII)Lccsanandroid/view/View;
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "preferredBoundFlags"    # I
    .param p4, "acceptableBoundFlags"    # I

    .line 213
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v0}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v0

    .line 214
    .local v0, "start":I
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v1}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v1

    .line 215
    .local v1, "end":I
    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 216
    .local v2, "next":I
    :goto_0
    const/4 v3, 0x0

    .line 217
    .local v3, "acceptableMatch":Lccsanandroid/view/View;
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-eq v4, p2, :cond_3

    .line 218
    iget-object v5, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v5, v4}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v5

    .line 219
    .local v5, "child":Lccsanandroid/view/View;
    iget-object v6, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v6, v5}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildStart(Lccsanandroid/view/View;)I

    move-result v6

    .line 220
    .local v6, "childStart":I
    iget-object v7, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v7, v5}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildEnd(Lccsanandroid/view/View;)I

    move-result v7

    .line 221
    .local v7, "childEnd":I
    iget-object v8, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, v0, v1, v6, v7}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 222
    if-eqz p3, :cond_1

    .line 223
    iget-object v8, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 224
    iget-object v8, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p3}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 225
    iget-object v8, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 227
    return-object v5

    .line 230
    :cond_1
    if-eqz p4, :cond_2

    .line 231
    iget-object v8, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 232
    iget-object v8, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p4}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 233
    iget-object v8, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 234
    move-object v3, v5

    .line 217
    .end local v5    # "child":Lccsanandroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_2
    add-int/2addr v4, v2

    goto :goto_1

    .line 238
    .end local v4    # "i":I
    :cond_3
    return-object v3
.end method

.method isViewWithinBoundFlags(Lccsanandroid/view/View;I)Z
    .locals 5
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "boundsFlags"    # I

    .line 248
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v1}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getParentStart()I

    move-result v1

    iget-object v2, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v2}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getParentEnd()I

    move-result v2

    iget-object v3, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 249
    invoke-interface {v3, p1}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildStart(Lccsanandroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;->getChildEnd(Lccsanandroid/view/View;)I

    move-result v4

    .line 248
    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 250
    if-eqz p2, :cond_0

    .line 251
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 252
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v0, p2}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 253
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v0

    return v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
