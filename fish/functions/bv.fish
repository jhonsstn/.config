function bv
    # Read the current version from the manifest.json file
    set -l current_version (jq -r '.version' manifest.json)

    # Use string split to correctly separate the version parts
    set -l version_parts (echo $current_version | string split '.')
    set -l major $version_parts[1]
    set -l minor $version_parts[2]
    set -l patch $version_parts[3]

    # Increment the patch version by 1
    set -l new_patch (math "$patch + 1")
    set -l new_version "$major.$minor.$new_patch"

    # Update the manifest.json file with the new version
    jq --arg version "$new_version" '.version = $version' manifest.json > manifest_temp.json
    mv manifest_temp.json manifest.json

    echo "Version bumped to $new_version"
end
