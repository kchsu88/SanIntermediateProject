.class Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "SquaringDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/request/target/SquaringDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field private final side:I

.field private final wrapped:Lccsanandroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method constructor <init>(Lccsanandroid/graphics/drawable/Drawable$ConstantState;I)V
    .locals 0
    .param p1, "wrapped"    # Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .param p2, "side"    # I

    .line 217
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 218
    iput-object p1, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->wrapped:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 219
    iput p2, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->side:I

    .line 220
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;)V
    .locals 2
    .param p1, "other"    # Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    .line 214
    iget-object v0, p1, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->wrapped:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    iget v1, p1, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->side:I

    invoke-direct {p0, v0, v1}, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Lccsanandroid/graphics/drawable/Drawable$ConstantState;I)V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;)Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    .line 209
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->wrapped:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    .line 209
    iget v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->side:I

    return v0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Lccsanandroid/content/res/Resources;

    .line 229
    new-instance v0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lccsancom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;Lccsanandroid/content/res/Resources;)V

    return-object v0
.end method