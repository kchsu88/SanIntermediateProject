.class public Lccsancom/san/api/ProAzBuilder$AzViewHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/api/ProAzBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AzViewHolder"
.end annotation


# instance fields
.field public closeImage:Lccsanandroid/widget/ImageView;

.field public ctaText:Lccsanandroid/widget/TextView;

.field public descText:Lccsanandroid/widget/TextView;

.field public iconImage:Lccsanandroid/widget/ImageView;

.field public layoutView:Lccsanandroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static unifiedDownload(Lccsanandroid/view/View;Lccsancom/san/api/ProAzBuilder;)Lccsancom/san/api/ProAzBuilder$AzViewHolder;
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    invoke-direct {v0}, Lccsancom/san/api/ProAzBuilder$AzViewHolder;-><init>()V

    .line 2
    iput-object p0, v0, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->layoutView:Lccsanandroid/view/View;

    .line 3
    invoke-virtual {p1}, Lccsancom/san/api/ProAzBuilder;->getIconImageId()I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, v0, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->iconImage:Lccsanandroid/widget/ImageView;

    .line 4
    invoke-virtual {p1}, Lccsancom/san/api/ProAzBuilder;->getCloseImageId()I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, v0, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->closeImage:Lccsanandroid/widget/ImageView;

    .line 5
    invoke-virtual {p1}, Lccsancom/san/api/ProAzBuilder;->getDescTextId()I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, v0, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->descText:Lccsanandroid/widget/TextView;

    .line 6
    invoke-virtual {p1}, Lccsancom/san/api/ProAzBuilder;->getCtaTextId()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p0

    check-cast p0, Lccsanandroid/widget/TextView;

    iput-object p0, v0, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->ctaText:Lccsanandroid/widget/TextView;

    return-object v0
.end method
