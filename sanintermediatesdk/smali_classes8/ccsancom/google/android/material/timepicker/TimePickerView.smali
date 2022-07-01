.class Lccsancom/google/android/material/timepicker/TimePickerView;
.super Lccsanandroidx/constraintlayout/widget/ConstraintLayout;
.source "TimePickerView.java"

# interfaces
.implements Lccsancom/google/android/material/timepicker/TimePickerControls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;,
        Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;,
        Lccsancom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
    }
.end annotation


# instance fields
.field private final clockFace:Lccsancom/google/android/material/timepicker/ClockFaceView;

.field private final clockHandView:Lccsancom/google/android/material/timepicker/ClockHandView;

.field private final hourView:Lccsancom/google/android/material/chip/Chip;

.field private final minuteView:Lccsancom/google/android/material/chip/Chip;

.field private onDoubleTapListener:Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

.field private onPeriodChangeListener:Lccsancom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

.field private onSelectionChangeListener:Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

.field private final selectionListener:Lccsanandroid/view/View$OnClickListener;

.field private final toggle:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/timepicker/TimePickerView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/timepicker/TimePickerView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/constraintlayout/widget/ConstraintLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Lccsancom/google/android/material/timepicker/TimePickerView$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/timepicker/TimePickerView$1;-><init>(Lccsancom/google/android/material/timepicker/TimePickerView;)V

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->selectionListener:Lccsanandroid/view/View$OnClickListener;

    .line 100
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$layout;->material_timepicker:I

    invoke-virtual {v0, v1, p0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 101
    sget v0, Lccsancom/google/android/material/R$id;->material_clock_face:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/timepicker/TimePickerView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/timepicker/ClockFaceView;

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->clockFace:Lccsancom/google/android/material/timepicker/ClockFaceView;

    .line 102
    sget v0, Lccsancom/google/android/material/R$id;->material_clock_period_toggle:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/timepicker/TimePickerView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->toggle:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    .line 103
    new-instance v1, Lccsancom/google/android/material/timepicker/TimePickerView$2;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/timepicker/TimePickerView$2;-><init>(Lccsancom/google/android/material/timepicker/TimePickerView;)V

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    .line 115
    sget v0, Lccsancom/google/android/material/R$id;->material_minute_tv:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/timepicker/TimePickerView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/chip/Chip;

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->minuteView:Lccsancom/google/android/material/chip/Chip;

    .line 116
    sget v0, Lccsancom/google/android/material/R$id;->material_hour_tv:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/timepicker/TimePickerView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/chip/Chip;

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->hourView:Lccsancom/google/android/material/chip/Chip;

    .line 117
    sget v0, Lccsancom/google/android/material/R$id;->material_clock_hand:I

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/timepicker/TimePickerView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/timepicker/ClockHandView;

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->clockHandView:Lccsancom/google/android/material/timepicker/ClockHandView;

    .line 119
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerView;->setupDoubleTap()V

    .line 121
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerView;->setUpDisplay()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/timepicker/TimePickerView;)Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/TimePickerView;

    .line 55
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->onSelectionChangeListener:Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/timepicker/TimePickerView;)Lccsancom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/TimePickerView;

    .line 55
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lccsancom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/material/timepicker/TimePickerView;)Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/TimePickerView;

    .line 55
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->onDoubleTapListener:Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    return-object v0
.end method

.method private setUpDisplay()V
    .locals 3

    .line 166
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->minuteView:Lccsancom/google/android/material/chip/Chip;

    sget v1, Lccsancom/google/android/material/R$id;->selection_type:I

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->hourView:Lccsancom/google/android/material/chip/Chip;

    sget v1, Lccsancom/google/android/material/R$id;->selection_type:I

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->minuteView:Lccsancom/google/android/material/chip/Chip;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->selectionListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/chip/Chip;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->hourView:Lccsancom/google/android/material/chip/Chip;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->selectionListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/chip/Chip;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method private setupDoubleTap()V
    .locals 3

    .line 126
    new-instance v0, Lccsanandroid/view/GestureDetector;

    .line 128
    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/TimePickerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance v2, Lccsancom/google/android/material/timepicker/TimePickerView$3;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/timepicker/TimePickerView$3;-><init>(Lccsancom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v0, v1, v2}, Lccsanandroid/view/GestureDetector;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;)V

    .line 141
    .local v0, "gestureDetector":Lccsanandroid/view/GestureDetector;
    new-instance v1, Lccsancom/google/android/material/timepicker/TimePickerView$4;

    invoke-direct {v1, p0, v0}, Lccsancom/google/android/material/timepicker/TimePickerView$4;-><init>(Lccsancom/google/android/material/timepicker/TimePickerView;Lccsanandroid/view/GestureDetector;)V

    .line 153
    .local v1, "onTouchListener":Lccsanandroid/view/View$OnTouchListener;
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->minuteView:Lccsancom/google/android/material/chip/Chip;

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/chip/Chip;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 154
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->hourView:Lccsancom/google/android/material/chip/Chip;

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/chip/Chip;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 155
    return-void
.end method

.method private updateToggleConstraints()V
    .locals 4

    .line 251
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->toggle:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 254
    new-instance v0, Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 255
    .local v0, "constraintSet":Lccsanandroidx/constraintlayout/widget/ConstraintSet;
    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->clone(Lccsanandroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 256
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 257
    .local v1, "isLtr":Z
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 258
    .local v2, "sideToClear":I
    :cond_1
    sget v3, Lccsancom/google/android/material/R$id;->material_clock_display:I

    invoke-virtual {v0, v3, v2}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 259
    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->applyTo(Lccsanandroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 261
    .end local v0    # "constraintSet":Lccsanandroidx/constraintlayout/widget/ConstraintSet;
    .end local v1    # "isLtr":Z
    .end local v2    # "sideToClear":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addOnRotateListener(Lccsancom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V
    .locals 1
    .param p1, "onRotateListener"    # Lccsancom/google/android/material/timepicker/ClockHandView$OnRotateListener;

    .line 212
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->clockHandView:Lccsancom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/timepicker/ClockHandView;->addOnRotateListener(Lccsancom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    .line 213
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 246
    invoke-super {p0}, Lccsanandroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 247
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerView;->updateToggleConstraints()V

    .line 248
    return-void
.end method

.method protected onVisibilityChanged(Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Lccsanandroid/view/View;
    .param p2, "visibility"    # I

    .line 238
    invoke-super {p0, p1, p2}, Lccsanandroidx/constraintlayout/widget/ConstraintLayout;->onVisibilityChanged(Lccsanandroid/view/View;I)V

    .line 239
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 240
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerView;->updateToggleConstraints()V

    .line 242
    :cond_0
    return-void
.end method

.method public setActiveSelection(I)V
    .locals 4
    .param p1, "selection"    # I

    .line 207
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->minuteView:Lccsancom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lccsancom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->hourView:Lccsancom/google/android/material/chip/Chip;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 209
    return-void
.end method

.method public setAnimateOnTouchUp(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .line 188
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->clockHandView:Lccsancom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/timepicker/ClockHandView;->setAnimateOnTouchUp(Z)V

    .line 189
    return-void
.end method

.method public setHandRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 180
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->clockHandView:Lccsancom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    .line 181
    return-void
.end method

.method public setHandRotation(FZ)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "animate"    # Z

    .line 184
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->clockHandView:Lccsancom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    .line 185
    return-void
.end method

.method public setHourClickDelegate(Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "clickActionDelegate"    # Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 162
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->minuteView:Lccsancom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 163
    return-void
.end method

.method public setMinuteHourDelegate(Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "clickActionDelegate"    # Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 158
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->hourView:Lccsancom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 159
    return-void
.end method

.method public setOnActionUpListener(Lccsancom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V
    .locals 1
    .param p1, "onActionUpListener"    # Lccsancom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

    .line 216
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->clockHandView:Lccsancom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/timepicker/ClockHandView;->setOnActionUpListener(Lccsancom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V

    .line 217
    return-void
.end method

.method setOnDoubleTapListener(Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    .line 229
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->onDoubleTapListener:Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    .line 230
    return-void
.end method

.method setOnPeriodChangeListener(Lccsancom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;)V
    .locals 0
    .param p1, "onPeriodChangeListener"    # Lccsancom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    .line 220
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lccsancom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    .line 221
    return-void
.end method

.method setOnSelectionChangeListener(Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;)V
    .locals 0
    .param p1, "onSelectionChangeListener"    # Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    .line 225
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->onSelectionChangeListener:Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    .line 226
    return-void
.end method

.method public setValues([Ljava/lang/String;I)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/String;
    .param p2, "contentDescription"    # I

    .line 175
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->clockFace:Lccsancom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/material/timepicker/ClockFaceView;->setValues([Ljava/lang/String;I)V

    .line 176
    return-void
.end method

.method public showToggle()V
    .locals 2

    .line 233
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->toggle:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public updateTime(III)V
    .locals 7
    .param p1, "period"    # I
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 194
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget v1, Lccsancom/google/android/material/R$id;->material_clock_period_pm_button:I

    goto :goto_0

    :cond_0
    sget v1, Lccsancom/google/android/material/R$id;->material_clock_period_am_button:I

    .line 197
    .local v1, "checkedId":I
    :goto_0
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->toggle:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    .line 198
    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/TimePickerView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 199
    .local v2, "current":Ljava/util/Locale;
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%02d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "minuteFormatted":Ljava/lang/String;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "hourFormatted":Ljava/lang/String;
    iget-object v4, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->minuteView:Lccsancom/google/android/material/chip/Chip;

    invoke-virtual {v4, v3}, Lccsancom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v4, p0, Lccsancom/google/android/material/timepicker/TimePickerView;->hourView:Lccsancom/google/android/material/chip/Chip;

    invoke-virtual {v4, v0}, Lccsancom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method
