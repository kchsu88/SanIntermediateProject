.class Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Model"
.end annotation


# instance fields
.field mEnd:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

.field mEndId:I

.field mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field mStart:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

.field mStartId:I

.field final synthetic this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1971
    iput-object p1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    new-instance v0, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1973
    new-instance v0, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1974
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    .line 1975
    iput-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    return-void
.end method

.method private debugLayout(Ljava/lang/String;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "c"    # Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2162
    invoke-virtual {p2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 2163
    .local v0, "v":Lccsanandroid/view/View;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lccsanandroidx/constraintlayout/motion/widget/Debug;->getName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2164
    .local v1, "cName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  ========= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionLayout"

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    invoke-virtual {p2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2166
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 2167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2168
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2169
    .local v7, "child":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const-string v8, ""

    .line 2170
    .local v8, "a":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const-string v11, "_"

    if-eqz v10, :cond_0

    const-string v10, "T"

    goto :goto_1

    :cond_0
    move-object v10, v11

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2171
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1

    const-string v10, "B"

    goto :goto_2

    :cond_1
    move-object v10, v11

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2172
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_2

    const-string v10, "L"

    goto :goto_3

    :cond_2
    move-object v10, v11

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3

    const-string v11, "R"

    :cond_3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2174
    invoke-virtual {v7}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lccsanandroid/view/View;

    .line 2175
    invoke-static {v0}, Lccsanandroidx/constraintlayout/motion/widget/Debug;->getName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v9

    .line 2176
    .local v9, "name":Ljava/lang/String;
    instance-of v10, v0, Lccsanandroid/widget/TextView;

    if-eqz v10, :cond_4

    .line 2177
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, v0

    check-cast v11, Lccsanandroid/widget/TextView;

    invoke-virtual {v11}, Lccsanandroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2179
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "child":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "a":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2181
    .end local v5    # "i":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " done. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    return-void
.end method

.method private debugLayoutParam(Ljava/lang/String;Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "params"    # Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2136
    const-string v0, " "

    .line 2137
    .local v0, "a":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "SS"

    goto :goto_0

    :cond_0
    const-string v2, "__"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    const-string/jumbo v4, "|__"

    if-eq v2, v3, :cond_1

    const-string/jumbo v2, "|SE"

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v2, v3, :cond_2

    const-string/jumbo v2, "|ES"

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v2, v3, :cond_3

    const-string/jumbo v2, "|EE"

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v2, v3, :cond_4

    const-string/jumbo v2, "|LL"

    goto :goto_4

    :cond_4
    move-object v2, v4

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v2, v3, :cond_5

    const-string/jumbo v2, "|LR"

    goto :goto_5

    :cond_5
    move-object v2, v4

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v2, v3, :cond_6

    const-string/jumbo v2, "|RL"

    goto :goto_6

    :cond_6
    move-object v2, v4

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v2, v3, :cond_7

    const-string/jumbo v2, "|RR"

    goto :goto_7

    :cond_7
    move-object v2, v4

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v2, v3, :cond_8

    const-string/jumbo v2, "|TT"

    goto :goto_8

    :cond_8
    move-object v2, v4

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v2, v3, :cond_9

    const-string/jumbo v2, "|TB"

    goto :goto_9

    :cond_9
    move-object v2, v4

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v2, v3, :cond_a

    const-string/jumbo v2, "|BT"

    goto :goto_a

    :cond_a
    move-object v2, v4

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v2, v3, :cond_b

    const-string/jumbo v4, "|BB"

    :cond_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    return-void
.end method

.method private debugWidget(Ljava/lang/String;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "child"    # Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2153
    const-string v0, " "

    .line 2154
    .local v0, "a":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const-string v3, "B"

    const-string v4, "T"

    const-string v5, "__"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_0

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const-string v3, "R"

    const-string v4, "L"

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v7, :cond_4

    move-object v6, v4

    goto :goto_3

    :cond_4
    move-object v6, v3

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v5

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mType:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_6

    move-object v3, v4

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ---  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionLayout"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    return-void
.end method

.method private setupConstraintWidget(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 12
    .param p1, "base"    # Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "cset"    # Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    .line 2064
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 2065
    .local v0, "mapIdToWidget":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    new-instance v1, Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    move-object v7, v1

    .line 2067
    .local v7, "layoutParams":Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;
    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->clear()V

    .line 2068
    const/4 v8, 0x0

    invoke-virtual {v0, v8, p1}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2069
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2072
    invoke-virtual {p1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2073
    .local v2, "child":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/View;

    .line 2074
    .local v3, "view":Lccsanandroid/view/View;
    invoke-virtual {v3}, Lccsanandroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2075
    .end local v2    # "child":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "view":Lccsanandroid/view/View;
    goto :goto_0

    .line 2077
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2078
    .local v10, "child":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v10}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lccsanandroid/view/View;

    .line 2079
    .local v11, "view":Lccsanandroid/view/View;
    invoke-virtual {v11}, Lccsanandroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1, v7}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->applyToLayoutParams(ILccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 2081
    invoke-virtual {v11}, Lccsanandroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->getWidth(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 2082
    invoke-virtual {v11}, Lccsanandroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->getHeight(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 2083
    instance-of v1, v11, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v1, :cond_1

    .line 2084
    move-object v1, v11

    check-cast v1, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {p2, v1, v10, v7, v0}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->applyToHelper(Lccsanandroidx/constraintlayout/widget/ConstraintHelper;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Lccsanandroid/util/SparseArray;)V

    .line 2085
    instance-of v1, v11, Lccsanandroidx/constraintlayout/widget/Barrier;

    if-eqz v1, :cond_1

    .line 2086
    move-object v1, v11

    check-cast v1, Lccsanandroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/widget/Barrier;->validateParams()V

    .line 2096
    :cond_1
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 2097
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v7, v1}, Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    goto :goto_2

    .line 2099
    :cond_2
    invoke-virtual {v7, v8}, Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    .line 2101
    :goto_2
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v2, 0x0

    move-object v3, v11

    move-object v4, v10

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$800(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;ZLccsanandroid/view/View;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Lccsanandroid/util/SparseArray;)V

    .line 2102
    invoke-virtual {v11}, Lccsanandroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->getVisibilityMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2103
    invoke-virtual {v11}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v10, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    goto :goto_3

    .line 2105
    :cond_3
    invoke-virtual {v11}, Lccsanandroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->getVisibility(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 2107
    .end local v10    # "child":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "view":Lccsanandroid/view/View;
    :goto_3
    goto/16 :goto_1

    .line 2108
    :cond_4
    invoke-virtual {p1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2109
    .restart local v2    # "child":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v3, v2, Lccsanandroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v3, :cond_5

    .line 2110
    invoke-virtual {v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;

    .line 2111
    .local v3, "view":Lccsanandroidx/constraintlayout/widget/ConstraintHelper;
    move-object v4, v2

    check-cast v4, Lccsanandroidx/constraintlayout/solver/widgets/Helper;

    .line 2112
    .local v4, "helper":Lccsanandroidx/constraintlayout/solver/widgets/Helper;
    invoke-virtual {v3, p1, v4, v0}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/solver/widgets/Helper;Lccsanandroid/util/SparseArray;)V

    .line 2113
    move-object v5, v4

    check-cast v5, Lccsanandroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 2114
    .local v5, "virtualLayout":Lccsanandroidx/constraintlayout/solver/widgets/VirtualLayout;
    invoke-virtual {v5}, Lccsanandroidx/constraintlayout/solver/widgets/VirtualLayout;->captureWidgets()V

    .line 2116
    .end local v2    # "child":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "view":Lccsanandroidx/constraintlayout/widget/ConstraintHelper;
    .end local v4    # "helper":Lccsanandroidx/constraintlayout/solver/widgets/Helper;
    .end local v5    # "virtualLayout":Lccsanandroidx/constraintlayout/solver/widgets/VirtualLayout;
    :cond_5
    goto :goto_4

    .line 2117
    :cond_6
    return-void
.end method


# virtual methods
.method public build()V
    .locals 11

    .line 2265
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

    .line 2266
    .local v0, "n":I
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, v1, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2268
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2269
    iget-object v2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    .line 2270
    .local v2, "v":Lccsanandroid/view/View;
    new-instance v3, Lccsanandroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v3, v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionController;-><init>(Lccsanandroid/view/View;)V

    .line 2272
    .local v3, "motionController":Lccsanandroidx/constraintlayout/motion/widget/MotionController;
    iget-object v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v4, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    .end local v2    # "v":Lccsanandroid/view/View;
    .end local v3    # "motionController":Lccsanandroidx/constraintlayout/motion/widget/MotionController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2274
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 2275
    iget-object v2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    .line 2276
    .restart local v2    # "v":Lccsanandroid/view/View;
    iget-object v3, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v3, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/constraintlayout/motion/widget/MotionController;

    .line 2277
    .restart local v3    # "motionController":Lccsanandroidx/constraintlayout/motion/widget/MotionController;
    if-nez v3, :cond_1

    .line 2278
    goto/16 :goto_3

    .line 2280
    :cond_1
    iget-object v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    const-string v5, ")"

    const-string v6, " ("

    const-string v7, "no widget for  "

    const-string v8, "MotionLayout"

    if-eqz v4, :cond_3

    .line 2281
    iget-object v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v4, v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroid/view/View;)Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 2282
    .local v4, "startWidget":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_2

    .line 2283
    iget-object v9, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v3, v4, v9}, Lccsanandroidx/constraintlayout/motion/widget/MotionController;->setStartState(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_2

    .line 2285
    :cond_2
    iget-object v9, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v9, v9, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-eqz v9, :cond_3

    .line 2286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lccsanandroidx/constraintlayout/motion/widget/Debug;->getName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    .end local v4    # "startWidget":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3
    :goto_2
    iget-object v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v4, :cond_5

    .line 2291
    iget-object v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v4, v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroid/view/View;)Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 2292
    .local v4, "endWidget":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_4

    .line 2293
    iget-object v5, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v3, v4, v5}, Lccsanandroidx/constraintlayout/motion/widget/MotionController;->setEndState(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_3

    .line 2295
    :cond_4
    iget-object v9, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v9, v9, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-eqz v9, :cond_5

    .line 2296
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lccsanandroidx/constraintlayout/motion/widget/Debug;->getName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    .end local v2    # "v":Lccsanandroid/view/View;
    .end local v3    # "motionController":Lccsanandroidx/constraintlayout/motion/widget/MotionController;
    .end local v4    # "endWidget":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2301
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method copy(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 5
    .param p1, "src"    # Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "dest"    # Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1980
    invoke-virtual {p1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 1981
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1982
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    invoke-virtual {p2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1984
    invoke-virtual {p2, p1, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->copy(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 1985
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1987
    .local v3, "child_s":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v4, v3, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v4, :cond_0

    .line 1988
    new-instance v4, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    invoke-direct {v4}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;-><init>()V

    .local v4, "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_1

    .line 1989
    .end local v4    # "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_0
    instance-of v4, v3, Lccsanandroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_1

    .line 1990
    new-instance v4, Lccsanandroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v4}, Lccsanandroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    .restart local v4    # "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_1

    .line 1991
    .end local v4    # "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    instance-of v4, v3, Lccsanandroidx/constraintlayout/solver/widgets/Flow;

    if-eqz v4, :cond_2

    .line 1992
    new-instance v4, Lccsanandroidx/constraintlayout/solver/widgets/Flow;

    invoke-direct {v4}, Lccsanandroidx/constraintlayout/solver/widgets/Flow;-><init>()V

    .restart local v4    # "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_1

    .line 1993
    .end local v4    # "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2
    instance-of v4, v3, Lccsanandroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v4, :cond_3

    .line 1994
    new-instance v4, Lccsanandroidx/constraintlayout/solver/widgets/HelperWidget;

    invoke-direct {v4}, Lccsanandroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    .restart local v4    # "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_1

    .line 1996
    .end local v4    # "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3
    new-instance v4, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v4}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 1998
    .restart local v4    # "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1
    invoke-virtual {p2, v4}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->add(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 1999
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    .end local v3    # "child_s":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "child_d":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_0

    .line 2001
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2002
    .restart local v3    # "child_s":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v4, v3, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->copy(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 2003
    .end local v3    # "child_s":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_2

    .line 2004
    :cond_5
    return-void
.end method

.method getWidget(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroid/view/View;)Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 5
    .param p1, "container"    # Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 2120
    invoke-virtual {p1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 2121
    return-object p1

    .line 2123
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 2124
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2125
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2127
    .local v3, "widget":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_1

    .line 2128
    return-object v3

    .line 2125
    .end local v3    # "widget":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2132
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method initFrom(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/widget/ConstraintSet;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 5
    .param p1, "baseLayout"    # Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "start"    # Lccsanandroidx/constraintlayout/widget/ConstraintSet;
    .param p3, "end"    # Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    .line 2007
    iput-object p2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    .line 2008
    iput-object p3, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    .line 2009
    new-instance v0, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2010
    new-instance v0, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2011
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$200(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Lccsanandroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Lccsanandroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2012
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$300(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Lccsanandroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Lccsanandroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 2013
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2014
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 2015
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$400(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 2016
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$500(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 2017
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 2018
    if-eqz p2, :cond_0

    .line 2019
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p2}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 2021
    :cond_0
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p3}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_0

    .line 2023
    :cond_1
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p3}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 2024
    if-eqz p2, :cond_2

    .line 2025
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0, p2}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Lccsanandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 2032
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$600(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2033
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2042
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$700(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 2043
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 2050
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2051
    .local v0, "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_4

    .line 2052
    iget v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    .line 2053
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v3, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2054
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v3, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2056
    :cond_3
    iget v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_4

    .line 2057
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2058
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v2, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 2061
    :cond_4
    return-void
.end method

.method public isNotConfiguredWith(II)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "endId"    # I

    .line 2309
    iget v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    if-eq p2, v0, :cond_0

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

.method public measure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2190
    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {p1 .. p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 2191
    .local v10, "widthMode":I
    invoke-static/range {p2 .. p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 2193
    .local v11, "heightMode":I
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iput v10, v1, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 2194
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iput v11, v1, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 2195
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getOptimizationLevel()I

    move-result v12

    .line 2197
    .local v12, "optimisationLevel":I
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v2, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2198
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1200(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2199
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v1, :cond_2

    .line 2200
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1300(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_0

    .line 2203
    :cond_0
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v1, :cond_1

    .line 2204
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1400(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2206
    :cond_1
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v1, v2, v12, v8, v9}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1500(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2214
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 2215
    .local v1, "recompute_start_end_size":Z
    iget-object v2, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v10, v2, :cond_3

    if-ne v11, v2, :cond_3

    .line 2216
    const/4 v1, 0x0

    move v13, v1

    goto :goto_1

    .line 2218
    :cond_3
    move v13, v1

    .end local v1    # "recompute_start_end_size":Z
    .local v13, "recompute_start_end_size":Z
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v13, :cond_9

    .line 2219
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iput v10, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 2220
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iput v11, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 2221
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 2222
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1600(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2223
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v3, :cond_6

    .line 2224
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1700(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    goto :goto_2

    .line 2227
    :cond_4
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v3, :cond_5

    .line 2228
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1800(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2230
    :cond_5
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v3, v4, v12, v8, v9}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1900(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 2233
    :cond_6
    :goto_2
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iput v4, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 2234
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iput v4, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 2235
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iput v4, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 2236
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    iput v4, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 2237
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    iget-object v5, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v5, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    if-ne v4, v5, :cond_8

    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, v4, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    iget-object v5, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v5, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    if-eq v4, v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 2241
    :cond_9
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 2242
    .local v3, "width":I
    iget-object v4, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, v4, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 2243
    .local v4, "height":I
    iget-object v5, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v5, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_b

    iget-object v5, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v5, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    move v14, v3

    goto :goto_6

    .line 2244
    :cond_b
    :goto_5
    iget-object v5, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v5, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    int-to-float v5, v5

    iget-object v7, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v7, v7, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget-object v14, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v14, v14, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    iget-object v15, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v15, v15, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float v7, v7, v14

    add-float/2addr v5, v7

    float-to-int v3, v5

    move v14, v3

    .line 2246
    .end local v3    # "width":I
    .local v14, "width":I
    :goto_6
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    if-eq v3, v6, :cond_d

    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    if-nez v3, :cond_c

    goto :goto_7

    :cond_c
    move v15, v4

    goto :goto_8

    .line 2247
    :cond_d
    :goto_7
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    int-to-float v3, v3

    iget-object v5, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, v5, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget-object v6, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v6, v6, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    iget-object v7, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    iget v7, v7, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    float-to-int v4, v3

    move v15, v4

    .line 2250
    .end local v4    # "height":I
    .local v15, "height":I
    :goto_8
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2251
    invoke-virtual {v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_9

    :cond_e
    const/4 v6, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v6, 0x1

    .line 2252
    .local v6, "isWidthMeasuredTooSmall":Z
    :goto_a
    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2253
    invoke-virtual {v3}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v7, 0x1

    .line 2254
    .local v7, "isHeightMeasuredTooSmall":Z
    :goto_c
    iget-object v1, v0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v14

    move v5, v15

    invoke-static/range {v1 .. v7}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$2000(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V

    .line 2262
    return-void
.end method

.method public reEvaluateState()V
    .locals 2

    .line 2185
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$900(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1000(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->measure(II)V

    .line 2186
    iget-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;->access$1100(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 2187
    return-void
.end method

.method public setMeasuredId(II)V
    .locals 0
    .param p1, "startId"    # I
    .param p2, "endId"    # I

    .line 2304
    iput p1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    .line 2305
    iput p2, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    .line 2306
    return-void
.end method
