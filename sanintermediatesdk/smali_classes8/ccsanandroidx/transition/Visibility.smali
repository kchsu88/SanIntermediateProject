.class public abstract Lccsanandroidx/transition/Visibility;
.super Lccsanandroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/transition/Visibility$DisappearListener;,
        Lccsanandroidx/transition/Visibility$VisibilityInfo;,
        Lccsanandroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Lccsanandroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lccsanandroidx/transition/Transition;-><init>()V

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lccsanandroidx/transition/Visibility;->mMode:I

    .line 101
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 106
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Transition;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lccsanandroidx/transition/Visibility;->mMode:I

    .line 107
    sget-object v0, Lccsanandroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    move-object v1, p2

    check-cast v1, Lccsanandroid/content/res/XmlResourceParser;

    const-string/jumbo v2, "transitionVisibilityMode"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 112
    .local v1, "mode":I
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, v1}, Lccsanandroidx/transition/Visibility;->setMode(I)V

    .line 116
    :cond_0
    return-void
.end method

.method private captureValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 150
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    .line 151
    .local v0, "visibility":I
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:visibility:visibility"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 154
    .local v1, "loc":[I
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v2, v1}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 155
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method private getVisibilityChangeInfo(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroidx/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p1, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p2, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 195
    new-instance v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;

    invoke-direct {v0}, Lccsanandroidx/transition/Visibility$VisibilityInfo;-><init>()V

    .line 196
    .local v0, "visInfo":Lccsanandroidx/transition/Visibility$VisibilityInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 197
    iput-boolean v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 198
    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p1, :cond_0

    iget-object v6, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    iget-object v6, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 200
    iget-object v6, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/view/ViewGroup;

    iput-object v6, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartParent:Lccsanandroid/view/ViewGroup;

    goto :goto_0

    .line 202
    :cond_0
    iput v4, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 203
    iput-object v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartParent:Lccsanandroid/view/ViewGroup;

    .line 205
    :goto_0
    if-eqz p2, :cond_1

    iget-object v6, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    iget-object v3, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 207
    iget-object v3, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/ViewGroup;

    iput-object v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndParent:Lccsanandroid/view/ViewGroup;

    goto :goto_1

    .line 209
    :cond_1
    iput v4, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 210
    iput-object v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndParent:Lccsanandroid/view/ViewGroup;

    .line 212
    :goto_1
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 213
    iget v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartParent:Lccsanandroid/view/ViewGroup;

    iget-object v4, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndParent:Lccsanandroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 215
    return-object v0

    .line 217
    :cond_2
    iget v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v3, v4, :cond_4

    .line 218
    iget v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v3, :cond_3

    .line 219
    iput-boolean v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 220
    iput-boolean v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 221
    :cond_3
    iget v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_8

    .line 222
    iput-boolean v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 223
    iput-boolean v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 227
    :cond_4
    iget-object v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndParent:Lccsanandroid/view/ViewGroup;

    if-nez v3, :cond_5

    .line 228
    iput-boolean v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 229
    iput-boolean v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 230
    :cond_5
    iget-object v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartParent:Lccsanandroid/view/ViewGroup;

    if-nez v1, :cond_8

    .line 231
    iput-boolean v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 232
    iput-boolean v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 236
    :cond_6
    if-nez p1, :cond_7

    iget v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v3, :cond_7

    .line 237
    iput-boolean v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 238
    iput-boolean v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 239
    :cond_7
    if-nez p2, :cond_8

    iget v3, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v3, :cond_8

    .line 240
    iput-boolean v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 241
    iput-boolean v2, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 243
    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 165
    invoke-direct {p0, p1}, Lccsanandroidx/transition/Visibility;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 166
    return-void
.end method

.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 160
    invoke-direct {p0, p1}, Lccsanandroidx/transition/Visibility;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 161
    return-void
.end method

.method public createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 250
    invoke-direct {p0, p2, p3}, Lccsanandroidx/transition/Visibility;->getVisibilityChangeInfo(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroidx/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 251
    .local v0, "visInfo":Lccsanandroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartParent:Lccsanandroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndParent:Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 253
    :cond_0
    iget-boolean v1, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_1

    .line 254
    iget v5, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lccsanandroidx/transition/Visibility;->onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;ILccsanandroidx/transition/TransitionValues;I)Lccsanandroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 257
    :cond_1
    iget v5, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lccsanandroidx/transition/Visibility;->onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;ILccsanandroidx/transition/TransitionValues;I)Lccsanandroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 262
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .locals 1

    .line 140
    iget v0, p0, Lccsanandroidx/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 146
    sget-object v0, Lccsanandroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Z
    .locals 4
    .param p1, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p2, "newValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 507
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 508
    return v0

    .line 510
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 511
    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 512
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 515
    return v0

    .line 517
    :cond_1
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Visibility;->getVisibilityChangeInfo(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroidx/transition/Visibility$VisibilityInfo;

    move-result-object v1

    .line 518
    .local v1, "changeInfo":Lccsanandroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v1, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v2, :cond_3

    iget v2, v1, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v2, :cond_2

    iget v2, v1, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isVisible(Lccsanandroidx/transition/TransitionValues;)Z
    .locals 4
    .param p1, "values"    # Lccsanandroidx/transition/TransitionValues;

    .line 184
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 185
    return v0

    .line 187
    :cond_0
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .local v1, "visibility":I
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 190
    .local v2, "parent":Lccsanandroid/view/View;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;ILccsanandroidx/transition/TransitionValues;I)Lccsanandroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 283
    iget v0, p0, Lccsanandroidx/transition/Visibility;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    if-nez p2, :cond_1

    .line 287
    iget-object v0, p4, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 288
    .local v0, "endParent":Lccsanandroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/transition/Visibility;->getMatchedTransitionValues(Lccsanandroid/view/View;Z)Lccsanandroidx/transition/TransitionValues;

    move-result-object v3

    .line 290
    .local v3, "startParentValues":Lccsanandroidx/transition/TransitionValues;
    invoke-virtual {p0, v0, v1}, Lccsanandroidx/transition/Visibility;->getTransitionValues(Lccsanandroid/view/View;Z)Lccsanandroidx/transition/TransitionValues;

    move-result-object v1

    .line 291
    .local v1, "endParentValues":Lccsanandroidx/transition/TransitionValues;
    nop

    .line 292
    invoke-direct {p0, v3, v1}, Lccsanandroidx/transition/Visibility;->getVisibilityChangeInfo(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroidx/transition/Visibility$VisibilityInfo;

    move-result-object v4

    .line 293
    .local v4, "parentVisibilityInfo":Lccsanandroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v5, v4, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v5, :cond_1

    .line 294
    return-object v2

    .line 297
    .end local v0    # "endParent":Lccsanandroid/view/View;
    .end local v1    # "endParentValues":Lccsanandroidx/transition/TransitionValues;
    .end local v3    # "startParentValues":Lccsanandroidx/transition/TransitionValues;
    .end local v4    # "parentVisibilityInfo":Lccsanandroidx/transition/Visibility$VisibilityInfo;
    :cond_1
    iget-object v0, p4, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Lccsanandroidx/transition/Visibility;->onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 284
    :cond_2
    :goto_0
    return-object v2
.end method

.method public onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;ILccsanandroidx/transition/TransitionValues;I)Lccsanandroid/animation/Animator;
    .locals 19
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Lccsanandroidx/transition/Visibility;->mMode:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    .line 341
    return-object v7

    .line 344
    :cond_0
    if-nez v2, :cond_1

    .line 346
    return-object v7

    .line 349
    :cond_1
    iget-object v5, v2, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 350
    .local v5, "startView":Lccsanandroid/view/View;
    if-eqz v3, :cond_2

    iget-object v8, v3, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    goto :goto_0

    :cond_2
    move-object v8, v7

    .line 351
    .local v8, "endView":Lccsanandroid/view/View;
    :goto_0
    const/4 v9, 0x0

    .line 352
    .local v9, "overlayView":Lccsanandroid/view/View;
    const/4 v10, 0x0

    .line 353
    .local v10, "viewToKeep":Lccsanandroid/view/View;
    const/4 v11, 0x0

    .line 355
    .local v11, "reusingOverlayView":Z
    sget v12, Lccsanandroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v5, v12}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lccsanandroid/view/View;

    .line 356
    .local v12, "savedOverlayView":Lccsanandroid/view/View;
    const/4 v13, 0x1

    if-eqz v12, :cond_3

    .line 360
    move-object v9, v12

    .line 361
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 363
    :cond_3
    const/4 v14, 0x0

    .line 365
    .local v14, "needOverlayForStartView":Z
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_4

    goto :goto_1

    .line 374
    :cond_4
    const/4 v15, 0x4

    if-ne v4, v15, :cond_5

    .line 375
    move-object v10, v8

    goto :goto_2

    .line 378
    :cond_5
    if-ne v5, v8, :cond_6

    .line 379
    move-object v10, v8

    goto :goto_2

    .line 381
    :cond_6
    const/4 v14, 0x1

    goto :goto_2

    .line 366
    :cond_7
    :goto_1
    if-eqz v8, :cond_8

    .line 368
    move-object v9, v8

    goto :goto_2

    .line 370
    :cond_8
    const/4 v14, 0x1

    .line 386
    :goto_2
    if-eqz v14, :cond_c

    .line 390
    invoke-virtual {v5}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_9

    .line 392
    move-object v9, v5

    goto :goto_3

    .line 393
    :cond_9
    invoke-virtual {v5}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v15

    instance-of v15, v15, Lccsanandroid/view/View;

    if-eqz v15, :cond_c

    .line 394
    invoke-virtual {v5}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lccsanandroid/view/View;

    .line 395
    .local v15, "startParent":Lccsanandroid/view/View;
    invoke-virtual {v0, v15, v13}, Lccsanandroidx/transition/Visibility;->getTransitionValues(Lccsanandroid/view/View;Z)Lccsanandroidx/transition/TransitionValues;

    move-result-object v7

    .line 396
    .local v7, "startParentValues":Lccsanandroidx/transition/TransitionValues;
    invoke-virtual {v0, v15, v13}, Lccsanandroidx/transition/Visibility;->getMatchedTransitionValues(Lccsanandroid/view/View;Z)Lccsanandroidx/transition/TransitionValues;

    move-result-object v6

    .line 398
    .local v6, "endParentValues":Lccsanandroidx/transition/TransitionValues;
    nop

    .line 399
    invoke-direct {v0, v7, v6}, Lccsanandroidx/transition/Visibility;->getVisibilityChangeInfo(Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroidx/transition/Visibility$VisibilityInfo;

    move-result-object v13

    .line 400
    .local v13, "parentVisibilityInfo":Lccsanandroidx/transition/Visibility$VisibilityInfo;
    move-object/from16 v17, v6

    .end local v6    # "endParentValues":Lccsanandroidx/transition/TransitionValues;
    .local v17, "endParentValues":Lccsanandroidx/transition/TransitionValues;
    iget-boolean v6, v13, Lccsanandroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v6, :cond_a

    .line 401
    invoke-static {v1, v5, v15}, Lccsanandroidx/transition/TransitionUtils;->copyViewImage(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v9

    goto :goto_3

    .line 404
    :cond_a
    invoke-virtual {v15}, Lccsanandroid/view/View;->getId()I

    move-result v6

    .line 405
    .local v6, "id":I
    invoke-virtual {v15}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v18

    if-nez v18, :cond_b

    move-object/from16 v18, v7

    .end local v7    # "startParentValues":Lccsanandroidx/transition/TransitionValues;
    .local v18, "startParentValues":Lccsanandroidx/transition/TransitionValues;
    const/4 v7, -0x1

    if-eq v6, v7, :cond_c

    .line 406
    invoke-virtual {v1, v6}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-boolean v7, v0, Lccsanandroidx/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v7, :cond_c

    .line 410
    move-object v9, v5

    goto :goto_3

    .line 405
    .end local v18    # "startParentValues":Lccsanandroidx/transition/TransitionValues;
    .restart local v7    # "startParentValues":Lccsanandroidx/transition/TransitionValues;
    :cond_b
    move-object/from16 v18, v7

    .line 419
    .end local v6    # "id":I
    .end local v7    # "startParentValues":Lccsanandroidx/transition/TransitionValues;
    .end local v13    # "parentVisibilityInfo":Lccsanandroidx/transition/Visibility$VisibilityInfo;
    .end local v14    # "needOverlayForStartView":Z
    .end local v15    # "startParent":Lccsanandroid/view/View;
    .end local v17    # "endParentValues":Lccsanandroidx/transition/TransitionValues;
    :cond_c
    :goto_3
    const/4 v6, 0x0

    if-eqz v9, :cond_10

    .line 420
    if-nez v11, :cond_d

    .line 421
    iget-object v7, v2, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v13, "android:visibility:screenLocation"

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    check-cast v7, [I

    .line 422
    .local v7, "screenLoc":[I
    aget v13, v7, v6

    .line 423
    .local v13, "screenX":I
    const/4 v14, 0x1

    aget v15, v7, v14

    .line 424
    .local v15, "screenY":I
    const/4 v14, 0x2

    new-array v14, v14, [I

    .line 425
    .local v14, "loc":[I
    invoke-virtual {v1, v14}, Lccsanandroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 426
    aget v6, v14, v6

    sub-int v6, v13, v6

    invoke-virtual {v9}, Lccsanandroid/view/View;->getLeft()I

    move-result v16

    sub-int v6, v6, v16

    invoke-virtual {v9, v6}, Lccsanandroid/view/View;->offsetLeftAndRight(I)V

    .line 427
    const/4 v6, 0x1

    aget v6, v14, v6

    sub-int v6, v15, v6

    invoke-virtual {v9}, Lccsanandroid/view/View;->getTop()I

    move-result v16

    sub-int v6, v6, v16

    invoke-virtual {v9, v6}, Lccsanandroid/view/View;->offsetTopAndBottom(I)V

    .line 428
    invoke-static/range {p1 .. p1}, Lccsanandroidx/transition/ViewGroupUtils;->getOverlay(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayImpl;

    move-result-object v6

    invoke-interface {v6, v9}, Lccsanandroidx/transition/ViewGroupOverlayImpl;->add(Lccsanandroid/view/View;)V

    .line 430
    .end local v7    # "screenLoc":[I
    .end local v13    # "screenX":I
    .end local v14    # "loc":[I
    .end local v15    # "screenY":I
    :cond_d
    invoke-virtual {v0, v1, v9, v2, v3}, Lccsanandroidx/transition/Visibility;->onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object v6

    .line 431
    .local v6, "animator":Lccsanandroid/animation/Animator;
    if-nez v11, :cond_f

    .line 432
    if-nez v6, :cond_e

    .line 433
    invoke-static/range {p1 .. p1}, Lccsanandroidx/transition/ViewGroupUtils;->getOverlay(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayImpl;

    move-result-object v7

    invoke-interface {v7, v9}, Lccsanandroidx/transition/ViewGroupOverlayImpl;->remove(Lccsanandroid/view/View;)V

    goto :goto_4

    .line 435
    :cond_e
    sget v7, Lccsanandroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v5, v7, v9}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 436
    move-object v7, v9

    .line 437
    .local v7, "finalOverlayView":Lccsanandroid/view/View;
    move-object/from16 v13, p1

    .line 438
    .local v13, "overlayHost":Lccsanandroid/view/ViewGroup;
    new-instance v14, Lccsanandroidx/transition/Visibility$1;

    invoke-direct {v14, v0, v13, v7, v5}, Lccsanandroidx/transition/Visibility$1;-><init>(Lccsanandroidx/transition/Visibility;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    invoke-virtual {v0, v14}, Lccsanandroidx/transition/Visibility;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 463
    .end local v7    # "finalOverlayView":Lccsanandroid/view/View;
    .end local v13    # "overlayHost":Lccsanandroid/view/ViewGroup;
    :cond_f
    :goto_4
    return-object v6

    .line 466
    .end local v6    # "animator":Lccsanandroid/animation/Animator;
    :cond_10
    if-eqz v10, :cond_12

    .line 467
    invoke-virtual {v10}, Lccsanandroid/view/View;->getVisibility()I

    move-result v7

    .line 468
    .local v7, "originalVisibility":I
    invoke-static {v10, v6}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 469
    invoke-virtual {v0, v1, v10, v2, v3}, Lccsanandroidx/transition/Visibility;->onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object v6

    .line 470
    .restart local v6    # "animator":Lccsanandroid/animation/Animator;
    if-eqz v6, :cond_11

    .line 471
    new-instance v13, Lccsanandroidx/transition/Visibility$DisappearListener;

    const/4 v14, 0x1

    invoke-direct {v13, v10, v4, v14}, Lccsanandroidx/transition/Visibility$DisappearListener;-><init>(Lccsanandroid/view/View;IZ)V

    .line 473
    .local v13, "disappearListener":Lccsanandroidx/transition/Visibility$DisappearListener;
    invoke-virtual {v6, v13}, Lccsanandroid/animation/Animator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 474
    invoke-static {v6, v13}, Lccsanandroidx/transition/AnimatorUtils;->addPauseListener(Lccsanandroid/animation/Animator;Lccsanandroid/animation/AnimatorListenerAdapter;)V

    .line 475
    invoke-virtual {v0, v13}, Lccsanandroidx/transition/Visibility;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 476
    .end local v13    # "disappearListener":Lccsanandroidx/transition/Visibility$DisappearListener;
    goto :goto_5

    .line 477
    :cond_11
    invoke-static {v10, v7}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 479
    :goto_5
    return-object v6

    .line 481
    .end local v6    # "animator":Lccsanandroid/animation/Animator;
    .end local v7    # "originalVisibility":I
    :cond_12
    const/4 v6, 0x0

    return-object v6
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 126
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 129
    iput p1, p0, Lccsanandroidx/transition/Visibility;->mMode:I

    .line 130
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
