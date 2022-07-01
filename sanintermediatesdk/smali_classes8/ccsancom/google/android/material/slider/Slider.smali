.class public Lccsancom/google/android/material/slider/Slider;
.super Lccsancom/google/android/material/slider/BaseSlider;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/slider/Slider$OnSliderTouchListener;,
        Lccsancom/google/android/material/slider/Slider$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/slider/BaseSlider<",
        "Lccsancom/google/android/material/slider/Slider;",
        "Lccsancom/google/android/material/slider/Slider$OnChangeListener;",
        "Lccsancom/google/android/material/slider/Slider$OnSliderTouchListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/slider/Slider;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 56
    sget v0, Lccsancom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/slider/Slider;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/android/material/slider/BaseSlider;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010024

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/slider/Slider;->setValue(F)V

    .line 65
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method


# virtual methods
.method public bridge synthetic clearOnChangeListeners()V
    .locals 0

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->clearOnChangeListeners()V

    return-void
.end method

.method public bridge synthetic clearOnSliderTouchListeners()V
    .locals 0

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->clearOnSliderTouchListeners()V

    return-void
.end method

.method public bridge synthetic dispatchHoverEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->dispatchHoverEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActiveThumbIndex()I
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getActiveThumbIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFocusedThumbIndex()I
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getFocusedThumbIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHaloRadius()I
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getHaloRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHaloTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getHaloTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabelBehavior()I
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getLabelBehavior()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStepSize()F
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getStepSize()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbElevation()F
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getThumbElevation()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbRadius()I
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getThumbRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbStrokeColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getThumbStrokeColor()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThumbStrokeWidth()F
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getThumbStrokeWidth()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getThumbTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTickActiveTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getTickActiveTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTickInactiveTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getTickInactiveTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTickTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getTickTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackActiveTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getTrackActiveTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackHeight()I
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getTrackHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrackInactiveTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getTrackInactiveTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackSidePadding()I
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getTrackSidePadding()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrackTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getTrackTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackWidth()I
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getTrackWidth()I

    move-result v0

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 75
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/Slider;->getValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValueFrom()F
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getValueFrom()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValueTo()F
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->getValueTo()F

    move-result v0

    return v0
.end method

.method public bridge synthetic hasLabelFormatter()Z
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTickVisible()Z
    .locals 1

    .line 40
    invoke-super {p0}, Lccsancom/google/android/material/slider/BaseSlider;->isTickVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lccsancom/google/android/material/slider/BaseSlider;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILccsanandroid/view/KeyEvent;)Z
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lccsancom/google/android/material/slider/BaseSlider;->onKeyUp(ILccsanandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected pickActiveThumb()Z
    .locals 3

    .line 100
    invoke-virtual {p0}, Lccsancom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 101
    return v1

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/slider/Slider;->setActiveThumbIndex(I)V

    .line 105
    return v1
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setFocusedThumbIndex(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setFocusedThumbIndex(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadius(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadiusResource(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setHaloRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setHaloTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setHaloTintList(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setLabelBehavior(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    return-void
.end method

.method public bridge synthetic setLabelFormatter(Lccsancom/google/android/material/slider/LabelFormatter;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setLabelFormatter(Lccsancom/google/android/material/slider/LabelFormatter;)V

    return-void
.end method

.method public bridge synthetic setStepSize(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setStepSize(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevation(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevationResource(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbElevationResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadius(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadiusResource(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeColorResource(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbStrokeColorResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeWidth(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeWidthResource(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbStrokeWidthResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setThumbTintList(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickActiveTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTickTintList(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickVisible(Z)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTickVisible(Z)V

    return-void
.end method

.method public bridge synthetic setTrackActiveTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackHeight(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    return-void
.end method

.method public bridge synthetic setTrackInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setTrackTintList(Lccsanandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setValue(F)V
    .locals 3
    .param p1, "value"    # F

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/slider/Slider;->setValues([Ljava/lang/Float;)V

    .line 96
    return-void
.end method

.method public bridge synthetic setValueFrom(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setValueFrom(F)V

    return-void
.end method

.method public bridge synthetic setValueTo(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lccsancom/google/android/material/slider/BaseSlider;->setValueTo(F)V

    return-void
.end method
