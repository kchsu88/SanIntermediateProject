.class Lccsanandroidx/fragment/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I

.field private static final PLATFORM_IMPL:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

.field private static final SUPPORT_IMPL:Lccsanandroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsanandroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    .line 59
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lccsanandroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    .line 63
    invoke-static {}, Lccsanandroidx/fragment/app/FragmentTransition;->resolveSupportImpl()Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Lccsanandroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lccsanandroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 648
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p1, "sharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lccsanandroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 649
    invoke-virtual {p1, v0}, Lccsanandroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 650
    .local v1, "view":Lccsanandroid/view/View;
    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .end local v1    # "view":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 654
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Lccsanandroidx/fragment/app/BackStackRecord;Lccsanandroidx/fragment/app/FragmentTransaction$Op;Lccsanandroid/util/SparseArray;ZZ)V
    .locals 22
    .param p0, "transaction"    # Lccsanandroidx/fragment/app/BackStackRecord;
    .param p1, "op"    # Lccsanandroidx/fragment/app/FragmentTransaction$Op;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/BackStackRecord;",
            "Lccsanandroidx/fragment/app/FragmentTransaction$Op;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1125
    .local p2, "transitioningFragments":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v10, v1, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mFragment:Lccsanandroidx/fragment/app/Fragment;

    .line 1126
    .local v10, "fragment":Lccsanandroidx/fragment/app/Fragment;
    if-nez v10, :cond_0

    .line 1127
    return-void

    .line 1129
    :cond_0
    iget v11, v10, Lccsanandroidx/fragment/app/Fragment;->mContainerId:I

    .line 1130
    .local v11, "containerId":I
    if-nez v11, :cond_1

    .line 1131
    return-void

    .line 1133
    :cond_1
    if-eqz v3, :cond_2

    sget-object v4, Lccsanandroidx/fragment/app/FragmentTransition;->INVERSE_OPS:[I

    iget v5, v1, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    aget v4, v4, v5

    goto :goto_0

    :cond_2
    iget v4, v1, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    :goto_0
    move v12, v4

    .line 1134
    .local v12, "command":I
    const/4 v4, 0x0

    .line 1135
    .local v4, "setLastIn":Z
    const/4 v5, 0x0

    .line 1136
    .local v5, "wasRemoved":Z
    const/4 v6, 0x0

    .line 1137
    .local v6, "setFirstOut":Z
    const/4 v7, 0x0

    .line 1138
    .local v7, "wasAdded":Z
    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto/16 :goto_6

    .line 1140
    :pswitch_1
    if-eqz p4, :cond_4

    .line 1141
    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_3

    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_3

    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_3

    const/4 v8, 0x1

    :cond_3
    move v4, v8

    goto :goto_1

    .line 1143
    :cond_4
    iget-boolean v4, v10, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    .line 1145
    :goto_1
    const/4 v7, 0x1

    .line 1146
    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto/16 :goto_6

    .line 1157
    :pswitch_2
    if-eqz p4, :cond_6

    .line 1158
    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v13, :cond_5

    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_5

    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v13, :cond_5

    const/4 v8, 0x1

    :cond_5
    move v6, v8

    goto :goto_2

    .line 1160
    :cond_6
    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_7

    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_7

    const/4 v8, 0x1

    :cond_7
    move v6, v8

    .line 1162
    :goto_2
    const/4 v5, 0x1

    .line 1163
    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto :goto_6

    .line 1166
    :pswitch_3
    if-eqz p4, :cond_9

    .line 1167
    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_8

    iget-object v13, v10, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v13, :cond_8

    iget-object v13, v10, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    .line 1168
    invoke-virtual {v13}, Lccsanandroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_8

    iget v13, v10, Lccsanandroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    nop

    :goto_3
    move v6, v8

    goto :goto_4

    .line 1171
    :cond_9
    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v13, :cond_a

    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_a

    const/4 v8, 0x1

    :cond_a
    move v6, v8

    .line 1173
    :goto_4
    const/4 v5, 0x1

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    goto :goto_6

    .line 1149
    :pswitch_4
    if-eqz p4, :cond_b

    .line 1150
    iget-boolean v4, v10, Lccsanandroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_5

    .line 1152
    :cond_b
    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v13, :cond_c

    iget-boolean v13, v10, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v13, :cond_c

    const/4 v8, 0x1

    :cond_c
    move v4, v8

    .line 1154
    :goto_5
    const/4 v7, 0x1

    .line 1155
    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    .line 1176
    .end local v4    # "setLastIn":Z
    .end local v5    # "wasRemoved":Z
    .end local v6    # "setFirstOut":Z
    .end local v7    # "wasAdded":Z
    .local v13, "setLastIn":Z
    .local v14, "wasRemoved":Z
    .local v15, "setFirstOut":Z
    .local v16, "wasAdded":Z
    :goto_6
    invoke-virtual {v2, v11}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 1177
    .local v4, "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v13, :cond_d

    .line 1178
    nop

    .line 1179
    invoke-static {v4, v2, v11}, Lccsanandroidx/fragment/app/FragmentTransition;->ensureContainer(Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Lccsanandroid/util/SparseArray;I)Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v4

    .line 1180
    iput-object v10, v4, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lccsanandroidx/fragment/app/Fragment;

    .line 1181
    iput-boolean v3, v4, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1182
    iput-object v0, v4, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lccsanandroidx/fragment/app/BackStackRecord;

    move-object v8, v4

    goto :goto_7

    .line 1177
    :cond_d
    move-object v8, v4

    .line 1184
    .end local v4    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .local v8, "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :goto_7
    const/4 v7, 0x0

    if-nez p4, :cond_10

    if-eqz v16, :cond_10

    .line 1185
    if-eqz v8, :cond_e

    iget-object v4, v8, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lccsanandroidx/fragment/app/Fragment;

    if-ne v4, v10, :cond_e

    .line 1186
    iput-object v7, v8, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lccsanandroidx/fragment/app/Fragment;

    .line 1193
    :cond_e
    iget-object v6, v0, Lccsanandroidx/fragment/app/BackStackRecord;->mManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 1194
    .local v6, "manager":Lccsanandroidx/fragment/app/FragmentManagerImpl;
    iget v4, v10, Lccsanandroidx/fragment/app/Fragment;->mState:I

    if-ge v4, v9, :cond_f

    iget v4, v6, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lt v4, v9, :cond_f

    iget-boolean v4, v0, Lccsanandroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_f

    .line 1196
    invoke-virtual {v6, v10}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->makeActive(Lccsanandroidx/fragment/app/Fragment;)V

    .line 1197
    const/4 v9, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v4, v6

    move-object v5, v10

    move-object/from16 v20, v6

    .end local v6    # "manager":Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .local v20, "manager":Lccsanandroidx/fragment/app/FragmentManagerImpl;
    move v6, v9

    move-object v9, v7

    move/from16 v7, v17

    move-object/from16 v21, v8

    .end local v8    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .local v21, "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    move/from16 v8, v18

    move-object v1, v9

    move/from16 v9, v19

    invoke-virtual/range {v4 .. v9}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->moveToState(Lccsanandroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_8

    .line 1194
    .end local v20    # "manager":Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .end local v21    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v6    # "manager":Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .restart local v8    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_f
    move-object/from16 v20, v6

    move-object v1, v7

    move-object/from16 v21, v8

    .end local v6    # "manager":Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .end local v8    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v20    # "manager":Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .restart local v21    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    goto :goto_8

    .line 1184
    .end local v20    # "manager":Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .end local v21    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_10
    move-object v1, v7

    move-object/from16 v21, v8

    .line 1200
    .end local v8    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v21    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :goto_8
    if-eqz v15, :cond_12

    move-object/from16 v4, v21

    .end local v21    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v4    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v4, :cond_11

    iget-object v5, v4, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lccsanandroidx/fragment/app/Fragment;

    if-nez v5, :cond_13

    .line 1201
    :cond_11
    nop

    .line 1202
    invoke-static {v4, v2, v11}, Lccsanandroidx/fragment/app/FragmentTransition;->ensureContainer(Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Lccsanandroid/util/SparseArray;I)Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v8

    .line 1203
    .end local v4    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    iput-object v10, v8, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lccsanandroidx/fragment/app/Fragment;

    .line 1204
    iput-boolean v3, v8, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1205
    iput-object v0, v8, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lccsanandroidx/fragment/app/BackStackRecord;

    goto :goto_9

    .line 1200
    .end local v8    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v21    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_12
    move-object/from16 v4, v21

    .line 1208
    .end local v21    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v4    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :cond_13
    move-object v8, v4

    .end local v4    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .restart local v8    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :goto_9
    if-nez p4, :cond_14

    if-eqz v14, :cond_14

    if-eqz v8, :cond_14

    iget-object v4, v8, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lccsanandroidx/fragment/app/Fragment;

    if-ne v4, v10, :cond_14

    .line 1210
    iput-object v1, v8, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lccsanandroidx/fragment/app/Fragment;

    .line 1212
    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static calculateFragments(Lccsanandroidx/fragment/app/BackStackRecord;Lccsanandroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Lccsanandroidx/fragment/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/BackStackRecord;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1077
    .local p1, "transitioningFragments":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Lccsanandroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1078
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1079
    iget-object v2, p0, Lccsanandroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/fragment/app/FragmentTransaction$Op;

    .line 1080
    .local v2, "op":Lccsanandroidx/fragment/app/FragmentTransaction$Op;
    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3, p2}, Lccsanandroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Lccsanandroidx/fragment/app/BackStackRecord;Lccsanandroidx/fragment/app/FragmentTransaction$Op;Lccsanandroid/util/SparseArray;ZZ)V

    .line 1078
    .end local v2    # "op":Lccsanandroidx/fragment/app/FragmentTransaction$Op;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1082
    .end local v1    # "opNum":I
    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lccsanandroidx/collection/ArrayMap;
    .locals 11
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v0, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    .line 164
    .local v0, "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v1, p4, -0x1

    .local v1, "recordNum":I
    :goto_0
    if-lt v1, p3, :cond_4

    .line 165
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/fragment/app/BackStackRecord;

    .line 166
    .local v2, "record":Lccsanandroidx/fragment/app/BackStackRecord;
    invoke-virtual {v2, p0}, Lccsanandroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    goto :goto_4

    .line 169
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 170
    .local v3, "isPop":Z
    iget-object v4, v2, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 171
    iget-object v4, v2, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 174
    .local v4, "numSharedElements":I
    if-eqz v3, :cond_1

    .line 175
    iget-object v5, v2, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 176
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v2, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v6, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 178
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, v2, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 179
    .restart local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v2, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 181
    .restart local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_3

    .line 182
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 183
    .local v8, "sourceName":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 184
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 185
    .local v10, "previousTarget":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 186
    invoke-virtual {v0, v8, v10}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 188
    :cond_2
    invoke-virtual {v0, v8, v9}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v8    # "sourceName":Ljava/lang/String;
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "previousTarget":Ljava/lang/String;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 164
    .end local v2    # "record":Lccsanandroidx/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "numSharedElements":I
    .end local v5    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 193
    .end local v1    # "recordNum":I
    :cond_4
    return-object v0
.end method

.method public static calculatePopFragments(Lccsanandroidx/fragment/app/BackStackRecord;Lccsanandroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Lccsanandroidx/fragment/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/BackStackRecord;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .line 1094
    .local p1, "transitioningFragments":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v0, p0, Lccsanandroidx/fragment/app/BackStackRecord;->mManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mContainer:Lccsanandroidx/fragment/app/FragmentContainer;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1098
    .local v0, "numOps":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "opNum":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1099
    iget-object v2, p0, Lccsanandroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/fragment/app/FragmentTransaction$Op;

    .line 1100
    .local v2, "op":Lccsanandroidx/fragment/app/FragmentTransaction$Op;
    const/4 v3, 0x1

    invoke-static {p0, v2, p1, v3, p2}, Lccsanandroidx/fragment/app/FragmentTransition;->addToFirstInLastOut(Lccsanandroidx/fragment/app/BackStackRecord;Lccsanandroidx/fragment/app/FragmentTransaction$Op;Lccsanandroid/util/SparseArray;ZZ)V

    .line 1098
    .end local v2    # "op":Lccsanandroidx/fragment/app/FragmentTransaction$Op;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1102
    .end local v1    # "opNum":I
    :cond_1
    return-void
.end method

.method static callSharedElementStartEnd(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;ZLccsanandroidx/collection/ArrayMap;Z)V
    .locals 6
    .param p0, "inFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p1, "outFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/Fragment;",
            "Lccsanandroidx/fragment/app/Fragment;",
            "Z",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 980
    .local p3, "sharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 981
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lccsanandroidx/core/app/SharedElementCallback;

    move-result-object v0

    goto :goto_0

    .line 982
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lccsanandroidx/core/app/SharedElementCallback;

    move-result-object v0

    :goto_0
    nop

    .line 983
    .local v0, "sharedElementCallback":Lccsanandroidx/core/app/SharedElementCallback;
    if-eqz v0, :cond_4

    .line 984
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 985
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lccsanandroidx/collection/ArrayMap;->size()I

    move-result v3

    .line 987
    .local v3, "count":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 988
    invoke-virtual {p3, v4}, Lccsanandroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    invoke-virtual {p3, v4}, Lccsanandroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 991
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    if-eqz p4, :cond_3

    .line 992
    invoke-virtual {v0, v2, v1, v4}, Lccsanandroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 994
    :cond_3
    invoke-virtual {v0, v2, v1, v4}, Lccsanandroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 997
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "count":I
    :cond_4
    :goto_3
    return-void
.end method

.method private static canHandleAll(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z
    .locals 3
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 471
    .local p1, "transitions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 472
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    const/4 v2, 0x0

    return v2

    .line 471
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static captureInSharedElements(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/collection/ArrayMap;Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Lccsanandroidx/collection/ArrayMap;
    .locals 11
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransitionImpl;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation

    .line 840
    .local p1, "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p3, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lccsanandroidx/fragment/app/Fragment;

    .line 841
    .local v0, "inFragment":Lccsanandroidx/fragment/app/Fragment;
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v1

    .line 842
    .local v1, "fragmentView":Lccsanandroid/view/View;
    invoke-virtual {p1}, Lccsanandroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 846
    :cond_0
    new-instance v2, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v2}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    .line 847
    .local v2, "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    invoke-virtual {p0, v2, v1}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Lccsanandroid/view/View;)V

    .line 851
    iget-object v3, p3, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lccsanandroidx/fragment/app/BackStackRecord;

    .line 852
    .local v3, "inTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    iget-boolean v4, p3, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v4, :cond_1

    .line 853
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getExitTransitionCallback()Lccsanandroidx/core/app/SharedElementCallback;

    move-result-object v4

    .line 854
    .local v4, "sharedElementCallback":Lccsanandroidx/core/app/SharedElementCallback;
    iget-object v5, v3, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 856
    .end local v4    # "sharedElementCallback":Lccsanandroidx/core/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lccsanandroidx/core/app/SharedElementCallback;

    move-result-object v4

    .line 857
    .restart local v4    # "sharedElementCallback":Lccsanandroidx/core/app/SharedElementCallback;
    iget-object v5, v3, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 860
    .restart local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v5, :cond_2

    .line 861
    invoke-virtual {v2, v5}, Lccsanandroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 862
    invoke-virtual {p1}, Lccsanandroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v2, v6}, Lccsanandroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 864
    :cond_2
    if-eqz v4, :cond_7

    .line 865
    invoke-virtual {v4, v5, v2}, Lccsanandroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 866
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_6

    .line 867
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 868
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanandroid/view/View;

    .line 869
    .local v8, "view":Lccsanandroid/view/View;
    if-nez v8, :cond_3

    .line 870
    invoke-static {p1, v7}, Lccsanandroidx/fragment/app/FragmentTransition;->findKeyForValue(Lccsanandroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 871
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 872
    invoke-virtual {p1, v9}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 874
    .end local v9    # "key":Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 875
    invoke-static {p1, v7}, Lccsanandroidx/fragment/app/FragmentTransition;->findKeyForValue(Lccsanandroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 876
    .restart local v9    # "key":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 877
    invoke-static {v8}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 874
    .end local v9    # "key":Ljava/lang/String;
    :cond_4
    :goto_2
    nop

    .line 866
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "view":Lccsanandroid/view/View;
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v6    # "i":I
    :cond_6
    goto :goto_4

    .line 882
    :cond_7
    invoke-static {p1, v2}, Lccsanandroidx/fragment/app/FragmentTransition;->retainValues(Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/collection/ArrayMap;)V

    .line 884
    :goto_4
    return-object v2

    .line 843
    .end local v2    # "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .end local v3    # "inTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    .end local v4    # "sharedElementCallback":Lccsanandroidx/core/app/SharedElementCallback;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    :goto_5
    invoke-virtual {p1}, Lccsanandroidx/collection/ArrayMap;->clear()V

    .line 844
    const/4 v2, 0x0

    return-object v2
.end method

.method private static captureOutSharedElements(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/collection/ArrayMap;Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Lccsanandroidx/collection/ArrayMap;
    .locals 10
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "fragments"    # Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransitionImpl;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation

    .line 784
    .local p1, "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lccsanandroidx/collection/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_4

    .line 788
    :cond_0
    iget-object v0, p3, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lccsanandroidx/fragment/app/Fragment;

    .line 789
    .local v0, "outFragment":Lccsanandroidx/fragment/app/Fragment;
    new-instance v1, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v1}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    .line 790
    .local v1, "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->requireView()Lccsanandroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Lccsanandroid/view/View;)V

    .line 794
    iget-object v2, p3, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lccsanandroidx/fragment/app/BackStackRecord;

    .line 795
    .local v2, "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    iget-boolean v3, p3, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v3, :cond_1

    .line 796
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lccsanandroidx/core/app/SharedElementCallback;

    move-result-object v3

    .line 797
    .local v3, "sharedElementCallback":Lccsanandroidx/core/app/SharedElementCallback;
    iget-object v4, v2, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .local v4, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 799
    .end local v3    # "sharedElementCallback":Lccsanandroidx/core/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getExitTransitionCallback()Lccsanandroidx/core/app/SharedElementCallback;

    move-result-object v3

    .line 800
    .restart local v3    # "sharedElementCallback":Lccsanandroidx/core/app/SharedElementCallback;
    iget-object v4, v2, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 803
    .restart local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1, v4}, Lccsanandroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 804
    if-eqz v3, :cond_5

    .line 805
    invoke-virtual {v3, v4, v1}, Lccsanandroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 806
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_4

    .line 807
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 808
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroid/view/View;

    .line 809
    .local v7, "view":Lccsanandroid/view/View;
    if-nez v7, :cond_2

    .line 810
    invoke-virtual {p1, v6}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 811
    :cond_2
    invoke-static {v7}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 812
    invoke-virtual {p1, v6}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 813
    .local v8, "targetValue":Ljava/lang/String;
    invoke-static {v7}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "view":Lccsanandroid/view/View;
    .end local v8    # "targetValue":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_4
    goto :goto_3

    .line 817
    :cond_5
    invoke-virtual {v1}, Lccsanandroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v5}, Lccsanandroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 819
    :goto_3
    return-object v1

    .line 785
    .end local v0    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .end local v1    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .end local v2    # "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    .end local v3    # "sharedElementCallback":Lccsanandroidx/core/app/SharedElementCallback;
    .end local v4    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lccsanandroidx/collection/ArrayMap;->clear()V

    .line 786
    const/4 v0, 0x0

    return-object v0
.end method

.method private static chooseImpl(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .locals 5
    .param p0, "outFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p1, "inFragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v0, "transitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p0, :cond_2

    .line 427
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    .line 428
    .local v1, "exitTransition":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    .line 432
    .local v2, "returnTransition":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 433
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v3

    .line 436
    .local v3, "sharedReturnTransition":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 437
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .end local v2    # "returnTransition":Ljava/lang/Object;
    .end local v3    # "sharedReturnTransition":Ljava/lang/Object;
    :cond_2
    if-eqz p1, :cond_5

    .line 441
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    .line 442
    .local v1, "enterTransition":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 443
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_3
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    .line 446
    .local v2, "reenterTransition":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 447
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_4
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v3

    .line 450
    .local v3, "sharedEnterTransition":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 451
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v1    # "enterTransition":Ljava/lang/Object;
    .end local v2    # "reenterTransition":Ljava/lang/Object;
    .end local v3    # "sharedEnterTransition":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 455
    return-object v2

    .line 458
    :cond_6
    sget-object v1, Lccsanandroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_7

    invoke-static {v1, v0}, Lccsanandroidx/fragment/app/FragmentTransition;->canHandleAll(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 459
    return-object v1

    .line 461
    :cond_7
    sget-object v3, Lccsanandroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v3, :cond_8

    invoke-static {v3, v0}, Lccsanandroidx/fragment/app/FragmentTransition;->canHandleAll(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 462
    return-object v3

    .line 464
    :cond_8
    if-nez v1, :cond_9

    if-nez v3, :cond_9

    .line 467
    return-object v2

    .line 465
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Transition types"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static configureEnteringExitingViews(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Ljava/util/ArrayList;Lccsanandroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "transition"    # Ljava/lang/Object;
    .param p2, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p4, "nonExistentView"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Lccsanandroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1003
    .local p3, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    const/4 v0, 0x0

    .line 1004
    .local v0, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    if-eqz p1, :cond_2

    .line 1005
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1006
    invoke-virtual {p2}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v1

    .line 1007
    .local v1, "root":Lccsanandroid/view/View;
    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {p0, v0, v1}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Lccsanandroid/view/View;)V

    .line 1010
    :cond_0
    if-eqz p3, :cond_1

    .line 1011
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1013
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1014
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-virtual {p0, p1, v0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1018
    .end local v1    # "root":Lccsanandroid/view/View;
    :cond_2
    return-object v0
.end method

.method private static configureSharedElementsOrdered(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Lccsanandroid/view/View;
    .param p4, "fragments"    # Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransitionImpl;",
            "Lccsanandroid/view/ViewGroup;",
            "Lccsanandroid/view/View;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 691
    .local p3, "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v12, p7

    iget-object v11, v14, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lccsanandroidx/fragment/app/Fragment;

    .line 692
    .local v11, "inFragment":Lccsanandroidx/fragment/app/Fragment;
    iget-object v10, v14, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lccsanandroidx/fragment/app/Fragment;

    .line 694
    .local v10, "outFragment":Lccsanandroidx/fragment/app/Fragment;
    const/4 v0, 0x0

    if-eqz v11, :cond_6

    if-nez v10, :cond_0

    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    goto/16 :goto_3

    .line 698
    :cond_0
    iget-boolean v9, v14, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 699
    .local v9, "inIsPop":Z
    invoke-virtual/range {p3 .. p3}, Lccsanandroidx/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 700
    :cond_1
    invoke-static {v13, v11, v10, v9}, Lccsanandroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    nop

    .line 702
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v8, p3

    invoke-static {v13, v8, v1, v14}, Lccsanandroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/collection/ArrayMap;Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Lccsanandroidx/collection/ArrayMap;

    move-result-object v7

    .line 705
    .local v7, "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    invoke-virtual/range {p3 .. p3}, Lccsanandroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 706
    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_1

    .line 708
    :cond_2
    invoke-virtual {v7}, Lccsanandroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v6, v1

    .line 711
    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .local v6, "sharedElementTransition":Ljava/lang/Object;
    :goto_1
    if-nez v12, :cond_3

    if-nez p8, :cond_3

    if-nez v6, :cond_3

    .line 713
    return-object v0

    .line 716
    :cond_3
    const/4 v0, 0x1

    invoke-static {v11, v10, v9, v7, v0}, Lccsanandroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;ZLccsanandroidx/collection/ArrayMap;Z)V

    .line 719
    if-eqz v6, :cond_5

    .line 720
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    move-object v5, v0

    .line 721
    .local v5, "inEpicenter":Lccsanandroid/graphics/Rect;
    move-object/from16 v4, p2

    invoke-virtual {v13, v6, v4, v15}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Lccsanandroid/view/View;Ljava/util/ArrayList;)V

    .line 723
    iget-boolean v3, v14, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 724
    .local v3, "outIsPop":Z
    iget-object v2, v14, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lccsanandroidx/fragment/app/BackStackRecord;

    .line 725
    .local v2, "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v16, v2

    .end local v2    # "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    .local v16, "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    move-object/from16 v2, p8

    move/from16 v17, v3

    .end local v3    # "outIsPop":Z
    .local v17, "outIsPop":Z
    move-object v3, v7

    move/from16 v4, v17

    move-object/from16 v18, v7

    move-object v7, v5

    .end local v5    # "inEpicenter":Lccsanandroid/graphics/Rect;
    .local v7, "inEpicenter":Lccsanandroid/graphics/Rect;
    .local v18, "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lccsanandroidx/fragment/app/FragmentTransition;->setOutEpicenter(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lccsanandroidx/collection/ArrayMap;ZLccsanandroidx/fragment/app/BackStackRecord;)V

    .line 727
    if-eqz v12, :cond_4

    .line 728
    invoke-virtual {v13, v12, v7}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Lccsanandroid/graphics/Rect;)V

    .line 730
    .end local v16    # "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    .end local v17    # "outIsPop":Z
    :cond_4
    move-object/from16 v16, v7

    goto :goto_2

    .line 731
    .end local v18    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .local v7, "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    :cond_5
    move-object/from16 v18, v7

    .end local v7    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .restart local v18    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    const/4 v5, 0x0

    move-object/from16 v16, v5

    .line 735
    .local v16, "inEpicenter":Lccsanandroid/graphics/Rect;
    :goto_2
    move-object v3, v6

    .line 736
    .local v3, "finalSharedElementTransition":Ljava/lang/Object;
    new-instance v7, Lccsanandroidx/fragment/app/FragmentTransition$4;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v17, v6

    .end local v6    # "sharedElementTransition":Ljava/lang/Object;
    .local v17, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v6, p2

    move-object v13, v7

    move-object v7, v11

    move-object v8, v10

    move/from16 v19, v9

    .end local v9    # "inIsPop":Z
    .local v19, "inIsPop":Z
    move-object/from16 v20, v10

    .end local v10    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .local v20, "outFragment":Lccsanandroidx/fragment/app/Fragment;
    move-object/from16 v10, p5

    move-object/from16 v21, v11

    .end local v11    # "inFragment":Lccsanandroidx/fragment/app/Fragment;
    .local v21, "inFragment":Lccsanandroidx/fragment/app/Fragment;
    move-object/from16 v11, p7

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lccsanandroidx/fragment/app/FragmentTransition$4;-><init>(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/collection/ArrayMap;Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Lccsanandroid/view/View;Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Lccsanandroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v13}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 764
    return-object v17

    .line 694
    .end local v3    # "finalSharedElementTransition":Ljava/lang/Object;
    .end local v16    # "inEpicenter":Lccsanandroid/graphics/Rect;
    .end local v17    # "sharedElementTransition":Ljava/lang/Object;
    .end local v18    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .end local v19    # "inIsPop":Z
    .end local v20    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .end local v21    # "inFragment":Lccsanandroidx/fragment/app/Fragment;
    .restart local v10    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .restart local v11    # "inFragment":Lccsanandroidx/fragment/app/Fragment;
    :cond_6
    move-object/from16 v1, p1

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 695
    .end local v10    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .end local v11    # "inFragment":Lccsanandroidx/fragment/app/Fragment;
    .restart local v20    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .restart local v21    # "inFragment":Lccsanandroidx/fragment/app/Fragment;
    :goto_3
    return-object v0
.end method

.method private static configureSharedElementsReordered(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "nonExistentView"    # Lccsanandroid/view/View;
    .param p4, "fragments"    # Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p7, "enterTransition"    # Ljava/lang/Object;
    .param p8, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransitionImpl;",
            "Lccsanandroid/view/ViewGroup;",
            "Lccsanandroid/view/View;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 562
    .local p3, "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    iget-object v15, v11, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lccsanandroidx/fragment/app/Fragment;

    .line 563
    .local v15, "inFragment":Lccsanandroidx/fragment/app/Fragment;
    iget-object v7, v11, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lccsanandroidx/fragment/app/Fragment;

    .line 564
    .local v7, "outFragment":Lccsanandroidx/fragment/app/Fragment;
    if-eqz v15, :cond_0

    .line 565
    invoke-virtual {v15}, Lccsanandroidx/fragment/app/Fragment;->requireView()Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 567
    :cond_0
    const/4 v0, 0x0

    if-eqz v15, :cond_9

    if-nez v7, :cond_1

    move-object/from16 v1, p1

    move-object/from16 v21, v7

    goto/16 :goto_3

    .line 571
    :cond_1
    iget-boolean v6, v11, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 572
    .local v6, "inIsPop":Z
    invoke-virtual/range {p3 .. p3}, Lccsanandroidx/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_0

    .line 573
    :cond_2
    invoke-static {v8, v15, v7, v6}, Lccsanandroidx/fragment/app/FragmentTransition;->getSharedElementTransition(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    nop

    .line 575
    .local v1, "sharedElementTransition":Ljava/lang/Object;
    invoke-static {v8, v10, v1, v11}, Lccsanandroidx/fragment/app/FragmentTransition;->captureOutSharedElements(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/collection/ArrayMap;Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Lccsanandroidx/collection/ArrayMap;

    move-result-object v5

    .line 578
    .local v5, "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    invoke-static {v8, v10, v1, v11}, Lccsanandroidx/fragment/app/FragmentTransition;->captureInSharedElements(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/collection/ArrayMap;Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Lccsanandroidx/collection/ArrayMap;

    move-result-object v4

    .line 581
    .local v4, "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    invoke-virtual/range {p3 .. p3}, Lccsanandroidx/collection/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 582
    const/4 v1, 0x0

    .line 583
    if-eqz v5, :cond_3

    .line 584
    invoke-virtual {v5}, Lccsanandroidx/collection/ArrayMap;->clear()V

    .line 586
    :cond_3
    if-eqz v4, :cond_4

    .line 587
    invoke-virtual {v4}, Lccsanandroidx/collection/ArrayMap;->clear()V

    .line 596
    :cond_4
    move-object v3, v1

    goto :goto_1

    .line 590
    :cond_5
    nop

    .line 591
    invoke-virtual/range {p3 .. p3}, Lccsanandroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 590
    invoke-static {v12, v5, v2}, Lccsanandroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lccsanandroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 592
    nop

    .line 593
    invoke-virtual/range {p3 .. p3}, Lccsanandroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 592
    invoke-static {v13, v4, v2}, Lccsanandroidx/fragment/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lccsanandroidx/collection/ArrayMap;Ljava/util/Collection;)V

    move-object v3, v1

    .line 596
    .end local v1    # "sharedElementTransition":Ljava/lang/Object;
    .local v3, "sharedElementTransition":Ljava/lang/Object;
    :goto_1
    if-nez v14, :cond_6

    if-nez p8, :cond_6

    if-nez v3, :cond_6

    .line 598
    return-object v0

    .line 601
    :cond_6
    const/4 v0, 0x1

    invoke-static {v15, v7, v6, v5, v0}, Lccsanandroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;ZLccsanandroidx/collection/ArrayMap;Z)V

    .line 605
    if-eqz v3, :cond_8

    .line 606
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {v8, v3, v9, v12}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Lccsanandroid/view/View;Ljava/util/ArrayList;)V

    .line 609
    iget-boolean v2, v11, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 610
    .local v2, "outIsPop":Z
    iget-object v1, v11, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lccsanandroidx/fragment/app/BackStackRecord;

    .line 611
    .local v1, "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    move-object/from16 v0, p0

    move-object/from16 v16, v1

    .end local v1    # "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    .local v16, "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    move-object v1, v3

    move/from16 v17, v2

    .end local v2    # "outIsPop":Z
    .local v17, "outIsPop":Z
    move-object/from16 v2, p8

    move-object/from16 v18, v3

    .end local v3    # "sharedElementTransition":Ljava/lang/Object;
    .local v18, "sharedElementTransition":Ljava/lang/Object;
    move-object v3, v5

    move-object v9, v4

    .end local v4    # "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .local v9, "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    move/from16 v4, v17

    move-object/from16 v19, v5

    .end local v5    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .local v19, "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lccsanandroidx/fragment/app/FragmentTransition;->setOutEpicenter(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lccsanandroidx/collection/ArrayMap;ZLccsanandroidx/fragment/app/BackStackRecord;)V

    .line 613
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 614
    .local v0, "epicenter":Lccsanandroid/graphics/Rect;
    invoke-static {v9, v11, v14, v6}, Lccsanandroidx/fragment/app/FragmentTransition;->getInEpicenterView(Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Lccsanandroid/view/View;

    move-result-object v1

    .line 616
    .local v1, "epicenterView":Lccsanandroid/view/View;
    if-eqz v1, :cond_7

    .line 617
    invoke-virtual {v8, v14, v0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Lccsanandroid/graphics/Rect;)V

    .line 619
    .end local v16    # "outTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    .end local v17    # "outIsPop":Z
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    goto :goto_2

    .line 620
    .end local v0    # "epicenter":Lccsanandroid/graphics/Rect;
    .end local v1    # "epicenterView":Lccsanandroid/view/View;
    .end local v9    # "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .end local v19    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .restart local v3    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v4    # "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .restart local v5    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    :cond_8
    move-object/from16 v18, v3

    move-object v9, v4

    move-object/from16 v19, v5

    .end local v3    # "sharedElementTransition":Ljava/lang/Object;
    .end local v4    # "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .end local v5    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .restart local v9    # "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .restart local v18    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v19    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    const/4 v0, 0x0

    .line 621
    .restart local v0    # "epicenter":Lccsanandroid/graphics/Rect;
    const/4 v1, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 624
    .end local v0    # "epicenter":Lccsanandroid/graphics/Rect;
    .local v16, "epicenter":Lccsanandroid/graphics/Rect;
    .local v17, "epicenterView":Lccsanandroid/view/View;
    :goto_2
    new-instance v5, Lccsanandroidx/fragment/app/FragmentTransition$3;

    move-object v0, v5

    move-object v1, v15

    move-object v2, v7

    move v3, v6

    move-object v4, v9

    move-object v8, v5

    move-object/from16 v5, v17

    move/from16 v20, v6

    .end local v6    # "inIsPop":Z
    .local v20, "inIsPop":Z
    move-object/from16 v6, p0

    move-object/from16 v21, v7

    .end local v7    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .local v21, "outFragment":Lccsanandroidx/fragment/app/Fragment;
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lccsanandroidx/fragment/app/FragmentTransition$3;-><init>(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;ZLccsanandroidx/collection/ArrayMap;Lccsanandroid/view/View;Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/graphics/Rect;)V

    move-object/from16 v1, p1

    invoke-static {v1, v8}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 634
    return-object v18

    .line 567
    .end local v9    # "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .end local v16    # "epicenter":Lccsanandroid/graphics/Rect;
    .end local v17    # "epicenterView":Lccsanandroid/view/View;
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .end local v19    # "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    .end local v20    # "inIsPop":Z
    .end local v21    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .restart local v7    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    :cond_9
    move-object/from16 v1, p1

    move-object/from16 v21, v7

    .line 568
    .end local v7    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .restart local v21    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    :goto_3
    return-object v0
.end method

.method private static configureTransitionsOrdered(Lccsanandroidx/fragment/app/FragmentManagerImpl;ILccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;)V
    .locals 30
    .param p0, "fragmentManager"    # Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentManagerImpl;",
            "I",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Lccsanandroid/view/View;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p4, "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v1, 0x0

    .line 313
    .local v1, "sceneRoot":Lccsanandroid/view/ViewGroup;
    iget-object v2, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mContainer:Lccsanandroidx/fragment/app/FragmentContainer;

    invoke-virtual {v2}, Lccsanandroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mContainer:Lccsanandroidx/fragment/app/FragmentContainer;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Lccsanandroidx/fragment/app/FragmentContainer;->onFindViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lccsanandroid/view/ViewGroup;

    move-object v14, v1

    goto :goto_0

    .line 313
    :cond_0
    move/from16 v13, p1

    move-object v14, v1

    .line 316
    .end local v1    # "sceneRoot":Lccsanandroid/view/ViewGroup;
    .local v14, "sceneRoot":Lccsanandroid/view/ViewGroup;
    :goto_0
    if-nez v14, :cond_1

    .line 317
    return-void

    .line 319
    :cond_1
    iget-object v15, v10, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lccsanandroidx/fragment/app/Fragment;

    .line 320
    .local v15, "inFragment":Lccsanandroidx/fragment/app/Fragment;
    iget-object v9, v10, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lccsanandroidx/fragment/app/Fragment;

    .line 321
    .local v9, "outFragment":Lccsanandroidx/fragment/app/Fragment;
    invoke-static {v9, v15}, Lccsanandroidx/fragment/app/FragmentTransition;->chooseImpl(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v8

    .line 322
    .local v8, "impl":Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    if-nez v8, :cond_2

    .line 323
    return-void

    .line 325
    :cond_2
    iget-boolean v7, v10, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 326
    .local v7, "inIsPop":Z
    iget-boolean v6, v10, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 328
    .local v6, "outIsPop":Z
    invoke-static {v8, v15, v7}, Lccsanandroidx/fragment/app/FragmentTransition;->getEnterTransition(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    .line 329
    .local v5, "enterTransition":Ljava/lang/Object;
    invoke-static {v8, v9, v6}, Lccsanandroidx/fragment/app/FragmentTransition;->getExitTransition(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    .line 331
    .local v4, "exitTransition":Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 332
    .local v3, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 334
    .local v2, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v1, v8

    move-object/from16 v24, v2

    .end local v2    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v24, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v2, v14

    move-object/from16 v25, v3

    .end local v3    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v25, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object/from16 v3, p3

    move-object/from16 v16, v4

    .end local v4    # "exitTransition":Ljava/lang/Object;
    .local v16, "exitTransition":Ljava/lang/Object;
    move-object/from16 v4, p4

    move-object/from16 v26, v5

    .end local v5    # "enterTransition":Ljava/lang/Object;
    .local v26, "enterTransition":Ljava/lang/Object;
    move-object/from16 v5, p2

    move/from16 v27, v6

    .end local v6    # "outIsPop":Z
    .local v27, "outIsPop":Z
    move-object/from16 v6, v25

    move/from16 v28, v7

    .end local v7    # "inIsPop":Z
    .local v28, "inIsPop":Z
    move-object/from16 v7, v24

    move-object v0, v8

    .end local v8    # "impl":Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .local v0, "impl":Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v8, v26

    move-object v13, v9

    .end local v9    # "outFragment":Lccsanandroidx/fragment/app/Fragment;
    .local v13, "outFragment":Lccsanandroidx/fragment/app/Fragment;
    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lccsanandroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 338
    .local v29, "sharedElementTransition":Ljava/lang/Object;
    move-object/from16 v9, v26

    .end local v26    # "enterTransition":Ljava/lang/Object;
    .local v9, "enterTransition":Ljava/lang/Object;
    if-nez v9, :cond_3

    if-nez v29, :cond_3

    move-object/from16 v1, v16

    .end local v16    # "exitTransition":Ljava/lang/Object;
    .local v1, "exitTransition":Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 340
    return-void

    .line 338
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .restart local v16    # "exitTransition":Ljava/lang/Object;
    :cond_3
    move-object/from16 v1, v16

    .line 343
    .end local v16    # "exitTransition":Ljava/lang/Object;
    .restart local v1    # "exitTransition":Ljava/lang/Object;
    :cond_4
    move-object/from16 v8, v25

    .end local v25    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v8, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-static {v0, v1, v13, v8, v11}, Lccsanandroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Ljava/util/ArrayList;Lccsanandroid/view/View;)Ljava/util/ArrayList;

    move-result-object v25

    .line 346
    .local v25, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v26, v1

    goto :goto_2

    .line 347
    :cond_6
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v26, v4

    .line 352
    .end local v1    # "exitTransition":Ljava/lang/Object;
    .local v26, "exitTransition":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v0, v9, v11}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Lccsanandroid/view/View;)V

    .line 354
    iget-boolean v6, v10, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, v26

    move-object/from16 v4, v29

    move-object v5, v15

    invoke-static/range {v1 .. v6}, Lccsanandroidx/fragment/app/FragmentTransition;->mergeTransitions(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v7

    .line 357
    .local v7, "transition":Ljava/lang/Object;
    if-eqz v7, :cond_7

    .line 358
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v19, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v20, v26

    move-object/from16 v21, v25

    move-object/from16 v22, v29

    move-object/from16 v23, v24

    invoke-virtual/range {v16 .. v23}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 362
    move-object v1, v0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object v6, v9

    move-object v10, v7

    .end local v7    # "transition":Ljava/lang/Object;
    .local v10, "transition":Ljava/lang/Object;
    move-object/from16 v7, v19

    move-object/from16 v16, v8

    .end local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v16, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object/from16 v8, v26

    move-object/from16 v17, v9

    .end local v9    # "enterTransition":Ljava/lang/Object;
    .local v17, "enterTransition":Ljava/lang/Object;
    move-object/from16 v9, v25

    invoke-static/range {v1 .. v9}, Lccsanandroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/ViewGroup;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 364
    move-object/from16 v1, v24

    .end local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v1, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-virtual {v0, v14, v1, v12}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Lccsanandroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 366
    invoke-virtual {v0, v14, v10}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Lccsanandroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 367
    invoke-virtual {v0, v14, v1, v12}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Lccsanandroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_3

    .line 357
    .end local v1    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .end local v10    # "transition":Ljava/lang/Object;
    .end local v16    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .end local v17    # "enterTransition":Ljava/lang/Object;
    .end local v19    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v7    # "transition":Ljava/lang/Object;
    .restart local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v9    # "enterTransition":Ljava/lang/Object;
    .restart local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    :cond_7
    move-object v10, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v1, v24

    .line 369
    .end local v7    # "transition":Ljava/lang/Object;
    .end local v8    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .end local v9    # "enterTransition":Ljava/lang/Object;
    .end local v24    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v1    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v10    # "transition":Ljava/lang/Object;
    .restart local v16    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v17    # "enterTransition":Ljava/lang/Object;
    :goto_3
    return-void
.end method

.method private static configureTransitionsReordered(Lccsanandroidx/fragment/app/FragmentManagerImpl;ILccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;)V
    .locals 23
    .param p0, "fragmentManager"    # Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentManagerImpl;",
            "I",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Lccsanandroid/view/View;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p4, "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v1, 0x0

    .line 215
    .local v1, "sceneRoot":Lccsanandroid/view/ViewGroup;
    iget-object v2, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mContainer:Lccsanandroidx/fragment/app/FragmentContainer;

    invoke-virtual {v2}, Lccsanandroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mContainer:Lccsanandroidx/fragment/app/FragmentContainer;

    move/from16 v12, p1

    invoke-virtual {v2, v12}, Lccsanandroidx/fragment/app/FragmentContainer;->onFindViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lccsanandroid/view/ViewGroup;

    move-object v13, v1

    goto :goto_0

    .line 215
    :cond_0
    move/from16 v12, p1

    move-object v13, v1

    .line 218
    .end local v1    # "sceneRoot":Lccsanandroid/view/ViewGroup;
    .local v13, "sceneRoot":Lccsanandroid/view/ViewGroup;
    :goto_0
    if-nez v13, :cond_1

    .line 219
    return-void

    .line 221
    :cond_1
    iget-object v14, v10, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lccsanandroidx/fragment/app/Fragment;

    .line 222
    .local v14, "inFragment":Lccsanandroidx/fragment/app/Fragment;
    iget-object v15, v10, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lccsanandroidx/fragment/app/Fragment;

    .line 223
    .local v15, "outFragment":Lccsanandroidx/fragment/app/Fragment;
    invoke-static {v15, v14}, Lccsanandroidx/fragment/app/FragmentTransition;->chooseImpl(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v9

    .line 224
    .local v9, "impl":Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    if-nez v9, :cond_2

    .line 225
    return-void

    .line 227
    :cond_2
    iget-boolean v8, v10, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 228
    .local v8, "inIsPop":Z
    iget-boolean v7, v10, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 230
    .local v7, "outIsPop":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 231
    .local v6, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    .line 232
    .local v5, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-static {v9, v14, v8}, Lccsanandroidx/fragment/app/FragmentTransition;->getEnterTransition(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v4

    .line 233
    .local v4, "enterTransition":Ljava/lang/Object;
    invoke-static {v9, v15, v7}, Lccsanandroidx/fragment/app/FragmentTransition;->getExitTransition(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    .line 235
    .local v3, "exitTransition":Ljava/lang/Object;
    move-object v1, v9

    move-object v2, v13

    move-object/from16 v16, v3

    .end local v3    # "exitTransition":Ljava/lang/Object;
    .local v16, "exitTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    move-object/from16 v17, v4

    .end local v4    # "enterTransition":Ljava/lang/Object;
    .local v17, "enterTransition":Ljava/lang/Object;
    move-object/from16 v4, p4

    move-object/from16 v18, v5

    .end local v5    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v18, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object/from16 v5, p2

    move-object/from16 v19, v6

    .end local v6    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v19, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object/from16 v6, v18

    move/from16 v20, v7

    .end local v7    # "outIsPop":Z
    .local v20, "outIsPop":Z
    move-object/from16 v7, v19

    move/from16 v21, v8

    .end local v8    # "inIsPop":Z
    .local v21, "inIsPop":Z
    move-object/from16 v8, v17

    move-object v0, v9

    .end local v9    # "impl":Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .local v0, "impl":Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lccsanandroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 239
    .local v9, "sharedElementTransition":Ljava/lang/Object;
    nop

    .end local v17    # "enterTransition":Ljava/lang/Object;
    .local v8, "enterTransition":Ljava/lang/Object;
    if-nez v8, :cond_3

    if-nez v9, :cond_3

    move-object/from16 v7, v16

    .end local v16    # "exitTransition":Ljava/lang/Object;
    .local v7, "exitTransition":Ljava/lang/Object;
    if-nez v7, :cond_4

    .line 241
    return-void

    .line 239
    .end local v7    # "exitTransition":Ljava/lang/Object;
    .restart local v16    # "exitTransition":Ljava/lang/Object;
    :cond_3
    move-object/from16 v7, v16

    .line 244
    .end local v16    # "exitTransition":Ljava/lang/Object;
    .restart local v7    # "exitTransition":Ljava/lang/Object;
    :cond_4
    move-object/from16 v6, v18

    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-static {v0, v7, v15, v6, v11}, Lccsanandroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Ljava/util/ArrayList;Lccsanandroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 247
    .local v5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object/from16 v4, v19

    .end local v19    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-static {v0, v8, v14, v4, v11}, Lccsanandroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Ljava/util/ArrayList;Lccsanandroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    .line 250
    .local v3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    const/4 v1, 0x4

    invoke-static {v3, v1}, Lccsanandroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 252
    move-object v1, v0

    move-object v2, v8

    move-object/from16 v16, v3

    .end local v3    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v16, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v3, v7

    move-object v10, v4

    .end local v4    # "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v10, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v4, v9

    move-object v11, v5

    .end local v5    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v11, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v5, v14

    .end local v6    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move/from16 v6, v21

    invoke-static/range {v1 .. v6}, Lccsanandroidx/fragment/app/FragmentTransition;->mergeTransitions(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v6

    .line 255
    .local v6, "transition":Ljava/lang/Object;
    if-eqz v6, :cond_5

    .line 256
    invoke-static {v0, v7, v15, v11}, Lccsanandroidx/fragment/app/FragmentTransition;->replaceHide(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    .line 257
    nop

    .line 258
    invoke-virtual {v0, v10}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    .line 259
    .local v17, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v0

    move-object v2, v6

    move-object v3, v8

    move-object/from16 v4, v16

    move-object v5, v7

    move-object v12, v6

    .end local v6    # "transition":Ljava/lang/Object;
    .local v12, "transition":Ljava/lang/Object;
    move-object v6, v11

    move-object/from16 v19, v7

    .end local v7    # "exitTransition":Ljava/lang/Object;
    .local v19, "exitTransition":Ljava/lang/Object;
    move-object v7, v9

    move-object/from16 v22, v8

    .end local v8    # "enterTransition":Ljava/lang/Object;
    .local v22, "enterTransition":Ljava/lang/Object;
    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 262
    invoke-virtual {v0, v13, v12}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Lccsanandroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 263
    move-object v2, v0

    move-object v3, v13

    move-object/from16 v4, v18

    move-object v5, v10

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Lccsanandroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 265
    const/4 v1, 0x0

    move-object/from16 v2, v16

    .end local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v2, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-static {v2, v1}, Lccsanandroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 266
    move-object/from16 v1, v18

    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local v1, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-virtual {v0, v9, v1, v10}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 255
    .end local v1    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .end local v2    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .end local v12    # "transition":Ljava/lang/Object;
    .end local v17    # "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "exitTransition":Ljava/lang/Object;
    .end local v22    # "enterTransition":Ljava/lang/Object;
    .restart local v6    # "transition":Ljava/lang/Object;
    .restart local v7    # "exitTransition":Ljava/lang/Object;
    .restart local v8    # "enterTransition":Ljava/lang/Object;
    .restart local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    :cond_5
    move-object v12, v6

    move-object/from16 v19, v7

    move-object/from16 v22, v8

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    .line 269
    .end local v6    # "transition":Ljava/lang/Object;
    .end local v7    # "exitTransition":Ljava/lang/Object;
    .end local v8    # "enterTransition":Ljava/lang/Object;
    .end local v16    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .end local v18    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v1    # "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v2    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .restart local v12    # "transition":Ljava/lang/Object;
    .restart local v19    # "exitTransition":Ljava/lang/Object;
    .restart local v22    # "enterTransition":Ljava/lang/Object;
    :goto_1
    return-void
.end method

.method private static ensureContainer(Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Lccsanandroid/util/SparseArray;I)Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .locals 1
    .param p0, "containerTransition"    # Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .line 1222
    .local p1, "transitioningFragments":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    if-nez p0, :cond_0

    .line 1223
    new-instance v0, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object p0, v0

    .line 1224
    invoke-virtual {p1, p2, p0}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1226
    :cond_0
    return-object p0
.end method

.method private static findKeyForValue(Lccsanandroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 891
    .local p0, "map":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lccsanandroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 892
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 893
    invoke-virtual {p0, v1}, Lccsanandroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    invoke-virtual {p0, v1}, Lccsanandroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 892
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEnterTransition(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 507
    if-nez p1, :cond_0

    .line 508
    const/4 v0, 0x0

    return-object v0

    .line 510
    :cond_0
    if-eqz p2, :cond_1

    .line 511
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_1
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 510
    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getExitTransition(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "outFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "isPop"    # Z

    .line 520
    if-nez p1, :cond_0

    .line 521
    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    if-eqz p2, :cond_1

    .line 524
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    .line 523
    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getInEpicenterView(Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Lccsanandroid/view/View;
    .locals 3
    .param p1, "fragments"    # Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Lccsanandroid/view/View;"
        }
    .end annotation

    .line 913
    .local p0, "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    iget-object v0, p1, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lccsanandroidx/fragment/app/BackStackRecord;

    .line 914
    .local v0, "inTransaction":Lccsanandroidx/fragment/app/BackStackRecord;
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 916
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 917
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, v0, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 918
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 919
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    nop

    .line 920
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    return-object v2

    .line 922
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSharedElementTransition(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "inFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "outFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "isPop"    # Z

    .line 493
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 496
    :cond_0
    if-eqz p3, :cond_1

    .line 497
    invoke-virtual {p2}, Lccsanandroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 496
    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 499
    .local v0, "transition":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 494
    .end local v0    # "transition":Ljava/lang/Object;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static mergeTransitions(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "enterTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p3, "sharedElementTransition"    # Ljava/lang/Object;
    .param p4, "inFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p5, "isPop"    # Z

    .line 1042
    const/4 v0, 0x1

    .line 1043
    .local v0, "overlap":Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 1044
    if-eqz p5, :cond_0

    invoke-virtual {p4}, Lccsanandroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v1

    goto :goto_0

    .line 1045
    :cond_0
    invoke-virtual {p4}, Lccsanandroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v1

    :goto_0
    move v0, v1

    .line 1053
    :cond_1
    if-eqz v0, :cond_2

    .line 1055
    invoke-virtual {p0, p2, p1, p3}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "transition":Ljava/lang/Object;
    goto :goto_1

    .line 1060
    .end local v1    # "transition":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1063
    .restart local v1    # "transition":Ljava/lang/Object;
    :goto_1
    return-object v1
.end method

.method private static replaceHide(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p2, "exitingFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Lccsanandroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p2, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lccsanandroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lccsanandroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 282
    nop

    .line 283
    invoke-virtual {p2}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v0

    .line 282
    invoke-virtual {p0, p1, v0, p3}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Lccsanandroid/view/View;Ljava/util/ArrayList;)V

    .line 284
    iget-object v0, p2, Lccsanandroidx/fragment/app/Fragment;->mContainer:Lccsanandroid/view/ViewGroup;

    .line 285
    .local v0, "container":Lccsanandroid/view/ViewGroup;
    new-instance v1, Lccsanandroidx/fragment/app/FragmentTransition$1;

    invoke-direct {v1, p3}, Lccsanandroidx/fragment/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 292
    .end local v0    # "container":Lccsanandroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private static resolveSupportImpl()Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .locals 3

    .line 68
    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "impl":Ljava/lang/Class;, "Ljava/lang/Class<Lccsanandroidx/fragment/app/FragmentTransitionImpl;>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 71
    .end local v0    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<Lccsanandroidx/fragment/app/FragmentTransitionImpl;>;"
    :catch_0
    move-exception v0

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method private static retainValues(Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/collection/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 958
    .local p0, "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    invoke-virtual {p0}, Lccsanandroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 959
    invoke-virtual {p0, v0}, Lccsanandroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 960
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lccsanandroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 961
    invoke-virtual {p0, v0}, Lccsanandroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 958
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 964
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/ViewGroup;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "inFragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "nonExistentView"    # Lccsanandroid/view/View;
    .param p5, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransitionImpl;",
            "Lccsanandroid/view/ViewGroup;",
            "Lccsanandroidx/fragment/app/Fragment;",
            "Lccsanandroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 394
    .local p4, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p6, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p8, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    new-instance v9, Lccsanandroidx/fragment/app/FragmentTransition$2;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lccsanandroidx/fragment/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/View;Lccsanandroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {p1, v9}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 417
    return-void
.end method

.method private static setOutEpicenter(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Lccsanandroidx/collection/ArrayMap;ZLccsanandroidx/fragment/app/BackStackRecord;)V
    .locals 2
    .param p0, "impl"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "exitTransition"    # Ljava/lang/Object;
    .param p4, "outIsPop"    # Z
    .param p5, "outTransaction"    # Lccsanandroidx/fragment/app/BackStackRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;Z",
            "Lccsanandroidx/fragment/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .line 937
    .local p3, "outSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    iget-object v0, p5, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 938
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 939
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object v1, p5, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 940
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p5, Lccsanandroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 941
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    nop

    .line 942
    .local v0, "sourceName":Ljava/lang/String;
    invoke-virtual {p3, v0}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 943
    .local v1, "outEpicenterView":Lccsanandroid/view/View;
    invoke-virtual {p0, p1, v1}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Lccsanandroid/view/View;)V

    .line 945
    if-eqz p2, :cond_1

    .line 946
    invoke-virtual {p0, p2, v1}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Lccsanandroid/view/View;)V

    .line 949
    .end local v0    # "sourceName":Ljava/lang/String;
    .end local v1    # "outEpicenterView":Lccsanandroid/view/View;
    :cond_1
    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1026
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    if-nez p0, :cond_0

    .line 1027
    return-void

    .line 1029
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1030
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 1031
    .local v1, "view":Lccsanandroid/view/View;
    invoke-virtual {v1, p1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 1029
    .end local v1    # "view":Lccsanandroid/view/View;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1033
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static startTransitions(Lccsanandroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7
    .param p0, "fragmentManager"    # Lccsanandroidx/fragment/app/FragmentManagerImpl;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/fragment/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .line 107
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 113
    .local v0, "transitioningFragments":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;>;"
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 114
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/fragment/app/BackStackRecord;

    .line 115
    .local v2, "record":Lccsanandroidx/fragment/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 116
    .local v3, "isPop":Z
    if-eqz v3, :cond_1

    .line 117
    invoke-static {v2, v0, p5}, Lccsanandroidx/fragment/app/FragmentTransition;->calculatePopFragments(Lccsanandroidx/fragment/app/BackStackRecord;Lccsanandroid/util/SparseArray;Z)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-static {v2, v0, p5}, Lccsanandroidx/fragment/app/FragmentTransition;->calculateFragments(Lccsanandroidx/fragment/app/BackStackRecord;Lccsanandroid/util/SparseArray;Z)V

    .line 113
    .end local v2    # "record":Lccsanandroidx/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    new-instance v1, Lccsanandroid/view/View;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 125
    .local v1, "nonExistentView":Lccsanandroid/view/View;
    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    .line 126
    .local v2, "numContainers":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 127
    invoke-virtual {v0, v3}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 128
    .local v4, "containerId":I
    invoke-static {v4, p1, p2, p3, p4}, Lccsanandroidx/fragment/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lccsanandroidx/collection/ArrayMap;

    move-result-object v5

    .line 131
    .local v5, "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 132
    invoke-virtual {v0, v3}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    .line 134
    .local v6, "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    if-eqz p5, :cond_3

    .line 135
    invoke-static {p0, v4, v6, v1, v5}, Lccsanandroidx/fragment/app/FragmentTransition;->configureTransitionsReordered(Lccsanandroidx/fragment/app/FragmentManagerImpl;ILccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;)V

    goto :goto_3

    .line 138
    :cond_3
    invoke-static {p0, v4, v6, v1, v5}, Lccsanandroidx/fragment/app/FragmentTransition;->configureTransitionsOrdered(Lccsanandroidx/fragment/app/FragmentManagerImpl;ILccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;)V

    .line 126
    .end local v4    # "containerId":I
    .end local v5    # "nameOverrides":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "containerTransition":Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 143
    .end local v1    # "nonExistentView":Lccsanandroid/view/View;
    .end local v2    # "numContainers":I
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method static supportsTransition()Z
    .locals 1

    .line 1105
    sget-object v0, Lccsanandroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    if-nez v0, :cond_1

    sget-object v0, Lccsanandroidx/fragment/app/FragmentTransition;->SUPPORT_IMPL:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v0, :cond_0

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
