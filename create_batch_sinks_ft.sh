#!/bin/#!/usr/bin/env bash
echo "Creating pipeline sinks"

PROJECT_ID=$(gcloud config get-value project)

# GCS buckets
gsutil mb -l EU gs://$PROJECT_ID
gsutil cp Desktop/Fraud_Consolidated_Sample_Source.csv gs://$PROJECT_ID/

# BiqQuery Dataset
bq mk --location=EU FT_Test